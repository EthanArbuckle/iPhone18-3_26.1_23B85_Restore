@interface AXLiveRegionNode
+ (id)createNodeFromObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)object;
@end

@implementation AXLiveRegionNode

+ (id)createNodeFromObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXLiveRegionNode);
  v5 = [v3 accessibilityLabel];
  [(AXLiveRegionNode *)v4 setLabel:v5];

  v6 = [v3 accessibilityValue];
  [(AXLiveRegionNode *)v4 setValue:v6];

  -[AXLiveRegionNode setTraits:](v4, "setTraits:", [v3 accessibilityTraits]);
  [(AXLiveRegionNode *)v4 setObject:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AXLiveRegionNode *)self object];
    v6 = [v4 object];
    if (v5 == v6)
    {
      v8 = [(AXLiveRegionNode *)self label];
      v9 = [v4 label];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(AXLiveRegionNode *)self value];
        v11 = [v4 value];
        if ([v10 isEqualToString:v11])
        {
          v12 = [(AXLiveRegionNode *)self traits];
          v7 = v12 == [v4 traits];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end