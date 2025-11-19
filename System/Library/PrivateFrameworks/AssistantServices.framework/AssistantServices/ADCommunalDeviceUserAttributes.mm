@interface ADCommunalDeviceUserAttributes
+ (id)saCopy:(id)a3;
- (ADCommunalDeviceUserAttributes)initWithAttribute:(unint64_t)a3;
- (id)attributes;
- (void)addAttribute:(unint64_t)a3;
- (void)deleteAttribute:(unint64_t)a3;
@end

@implementation ADCommunalDeviceUserAttributes

- (id)attributes
{
  v2 = [(NSMutableArray *)self->_attributes copy];

  return v2;
}

- (void)deleteAttribute:(unint64_t)a3
{
  attributes = self->_attributes;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableArray *)attributes removeObject:v4];
}

- (void)addAttribute:(unint64_t)a3
{
  attributes = self->_attributes;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableArray *)attributes addObject:v4];
}

- (ADCommunalDeviceUserAttributes)initWithAttribute:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = ADCommunalDeviceUserAttributes;
  v4 = [(ADCommunalDeviceUserAttributes *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    attributes = v4->_attributes;
    v4->_attributes = v5;

    v7 = v4->_attributes;
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableArray *)v7 addObject:v8];
  }

  return v4;
}

+ (id)saCopy:(id)a3
{
  if (a3)
  {
    v3 = [a3 attributes];
    v4 = objc_alloc_init(NSMutableArray);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = SAHomeMemberInfoAttributeOWNERValue;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v14 + 1) + 8 * i) integerValue])
          {
            [v4 addObject:v9];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v19 = SAHomeMemberInfoAttributeUNKNOWNValue;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
  }

  return v12;
}

@end