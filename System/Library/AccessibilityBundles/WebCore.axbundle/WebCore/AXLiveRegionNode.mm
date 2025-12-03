@interface AXLiveRegionNode
+ (id)createNodeFromObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (id)object;
@end

@implementation AXLiveRegionNode

+ (id)createNodeFromObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(AXLiveRegionNode);
  accessibilityLabel = [objectCopy accessibilityLabel];
  [(AXLiveRegionNode *)v4 setLabel:accessibilityLabel];

  accessibilityValue = [objectCopy accessibilityValue];
  [(AXLiveRegionNode *)v4 setValue:accessibilityValue];

  -[AXLiveRegionNode setTraits:](v4, "setTraits:", [objectCopy accessibilityTraits]);
  [(AXLiveRegionNode *)v4 setObject:objectCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [(AXLiveRegionNode *)self object];
    object2 = [equalCopy object];
    if (object == object2)
    {
      label = [(AXLiveRegionNode *)self label];
      label2 = [equalCopy label];
      if ([label isEqualToString:label2])
      {
        value = [(AXLiveRegionNode *)self value];
        value2 = [equalCopy value];
        if ([value isEqualToString:value2])
        {
          traits = [(AXLiveRegionNode *)self traits];
          v7 = traits == [equalCopy traits];
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