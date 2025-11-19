@interface TUIAttributeSet
+ (id)allSupportedAttributes;
+ (id)globallySupportedAttributes;
+ (id)set;
+ (id)setWithArray:(id)a3;
+ (id)supportedAttributesSize;
+ (id)supportedAttributesSizeAndIntrinsic;
+ (id)supportedAttributesStyling;
+ (id)supportedAttributesTextStyling;
- (BOOL)containsAttribute:(unsigned __int16)a3;
- (TUIAttributeSet)initWithArray:(id)a3;
- (TUIAttributeSet)initWithOther:(id)a3;
- (TUIAttributeSet)initWithSet:(id)a3;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)setByAddingAttributesFromArray:(id)a3;
- (id)setByAddingAttributesFromSet:(id)a3;
@end

@implementation TUIAttributeSet

+ (id)set
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)setWithArray:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithArray:v4];

  return v5;
}

- (TUIAttributeSet)initWithArray:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TUIAttributeSet;
  v5 = [(TUIAttributeSet *)&v16 init];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [TUIAttributeRegistry attributeWithName:*(*(&v12 + 1) + 8 * i), v12];
          if (v10 >= 0x100)
          {
            sub_8BEBC("bitset set argument out of range");
          }

          *(v5->_bitset.__first_ + ((v10 >> 3) & 0x1FF8)) |= 1 << v10;
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (TUIAttributeSet)initWithSet:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TUIAttributeSet;
  v5 = [(TUIAttributeSet *)&v16 init];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [TUIAttributeRegistry attributeWithName:*(*(&v12 + 1) + 8 * i), v12];
          if (v10 >= 0x100)
          {
            sub_8BEBC("bitset set argument out of range");
          }

          *(v5->_bitset.__first_ + ((v10 >> 3) & 0x1FF8)) |= 1 << v10;
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (TUIAttributeSet)initWithOther:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIAttributeSet;
  v5 = [(TUIAttributeSet *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = *(v4 + 8);
    *(v5 + 24) = *(v4 + 24);
    *(v5 + 8) = v7;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUIMutableAttributeSet allocWithZone:a3];

  return [(TUIAttributeSet *)v4 initWithOther:self];
}

- (BOOL)containsAttribute:(unsigned __int16)a3
{
  if (a3 == 0xFFFF)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    if (a3 >= 0x100u)
    {
      sub_8BEBC("bitset test argument out of range");
    }

    return (*(self->_bitset.__first_ + ((a3 >> 3) & 0x1FF8)) >> a3) & 1;
  }

  return v3;
}

- (id)setByAddingAttributesFromSet:(id)a3
{
  v4 = a3;
  v5 = [(TUIAttributeSet *)self mutableCopy];
  [v5 unionSet:v4];

  return v5;
}

- (id)setByAddingAttributesFromArray:(id)a3
{
  v4 = a3;
  v5 = [(TUIAttributeSet *)self mutableCopy];
  v6 = [TUIAttributeSet setWithArray:v4];
  [v5 unionSet:v6];

  return v5;
}

+ (id)allSupportedAttributes
{
  if (qword_2E6840 != -1)
  {
    sub_19BFB8();
  }

  v3 = qword_2E6838;

  return v3;
}

+ (id)globallySupportedAttributes
{
  if (qword_2E6850 != -1)
  {
    sub_19BFCC();
  }

  v3 = qword_2E6848;

  return v3;
}

+ (id)supportedAttributesStyling
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_173138;
  block[3] = &unk_25F0F0;
  block[4] = a1;
  if (qword_2E6860 != -1)
  {
    dispatch_once(&qword_2E6860, block);
  }

  v2 = qword_2E6858;

  return v2;
}

+ (id)supportedAttributesTextStyling
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_173638;
  block[3] = &unk_25F0F0;
  block[4] = a1;
  if (qword_2E6870 != -1)
  {
    dispatch_once(&qword_2E6870, block);
  }

  v2 = qword_2E6868;

  return v2;
}

+ (id)supportedAttributesSize
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1737FC;
  block[3] = &unk_25F0F0;
  block[4] = a1;
  if (qword_2E6880 != -1)
  {
    dispatch_once(&qword_2E6880, block);
  }

  v2 = qword_2E6878;

  return v2;
}

+ (id)supportedAttributesSizeAndIntrinsic
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_173A78;
  block[3] = &unk_25F0F0;
  block[4] = a1;
  if (qword_2E6890 != -1)
  {
    dispatch_once(&qword_2E6890, block);
  }

  v2 = qword_2E6888;

  return v2;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end