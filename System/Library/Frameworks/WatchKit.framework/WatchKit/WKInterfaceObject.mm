@interface WKInterfaceObject
- (id)_initWithInterfaceProperty:(id)property viewControllerID:(id)d propertyIndex:(int64_t)index tableIndex:(int64_t)tableIndex rowIndex:(int64_t)rowIndex;
- (void)_sendValueChanged:(id)changed forProperty:(id)property;
- (void)_setImage:(id)image forProperty:(id)property;
- (void)_setImageData:(id)data forProperty:(id)property;
- (void)_setImageNamed:(id)named forProperty:(id)property;
- (void)setAccessibilityHint:(id)hint;
- (void)setAccessibilityIdentifier:(id)identifier;
- (void)setAccessibilityImageRegions:(id)regions;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setAccessibilityValue:(id)value;
- (void)setAlpha:(double)alpha;
- (void)setHeight:(double)height;
- (void)setHorizontalAlignment:(int64_t)alignment;
- (void)setRelativeHeight:(double)height withAdjustment:(double)adjustment;
- (void)setRelativeWidth:(double)width withAdjustment:(double)adjustment;
- (void)setRotation:(double)rotation;
- (void)setVerticalAlignment:(int64_t)alignment;
- (void)setWidth:(double)width;
@end

@implementation WKInterfaceObject

- (id)_initWithInterfaceProperty:(id)property viewControllerID:(id)d propertyIndex:(int64_t)index tableIndex:(int64_t)tableIndex rowIndex:(int64_t)rowIndex
{
  indexCopy = index;
  v16.receiver = self;
  v16.super_class = WKInterfaceObject;
  dCopy = d;
  propertyCopy = property;
  v13 = [(WKInterfaceObject *)&v16 init];
  [(WKInterfaceObject *)v13 setInterfaceProperty:propertyCopy];

  [(WKInterfaceObject *)v13 setViewControllerID:dCopy];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (indexCopy + 1)];
  [(WKInterfaceObject *)v13 setPropertyIndex:v14];

  [(WKInterfaceObject *)v13 setRowIndex:rowIndex];
  [(WKInterfaceObject *)v13 setTableIndex:tableIndex];
  return v13;
}

- (void)_setImage:(id)image forProperty:(id)property
{
  v16[3] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v7 = [SPRemoteInterface SerializablePropertyValue:image];
  if (v7)
  {
    v8 = +[SPCompanionAssetCache sharedInstance];
    v9 = [v8 keyFromImageData:v7];

    v10 = +[SPCompanionAssetCache sharedInstance];
    v11 = [v10 imageInTransientCache:v9];

    if (v11)
    {
      [(WKInterfaceObject *)self _sendValueChanged:v9 forProperty:propertyCopy];
    }

    else
    {
      v15[0] = @"a";
      v15[1] = @"d";
      v16[0] = v9;
      v16[1] = v7;
      v15[2] = @"t";
      v16[2] = &unk_284E0A190;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
      [(WKInterfaceObject *)self _sendValueChanged:v12 forProperty:propertyCopy];
      v13 = +[SPCompanionAssetCache sharedInstance];
      [v13 addImageReferenceToTransientCache:v7 withName:v9];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setImageData:(id)data forProperty:(id)property
{
  v16[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  propertyCopy = property;
  if (dataCopy)
  {
    v8 = +[SPCompanionAssetCache sharedInstance];
    v9 = [v8 keyFromImageData:dataCopy];

    v10 = +[SPCompanionAssetCache sharedInstance];
    v11 = [v10 imageInTransientCache:v9];

    if (v11)
    {
      [(WKInterfaceObject *)self _sendValueChanged:v9 forProperty:propertyCopy];
    }

    else
    {
      v15[0] = @"a";
      v15[1] = @"d";
      v16[0] = v9;
      v16[1] = dataCopy;
      v15[2] = @"t";
      v16[2] = &unk_284E0A190;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
      [(WKInterfaceObject *)self _sendValueChanged:v12 forProperty:propertyCopy];
      v13 = +[SPCompanionAssetCache sharedInstance];
      [v13 addImageReferenceToTransientCache:dataCopy withName:v9];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setImageNamed:(id)named forProperty:(id)property
{
  v13[3] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  propertyCopy = property;
  v8 = +[SPCompanionAssetCache sharedInstance];
  v9 = [v8 dataForImageWithName:namedCopy];

  if (v9)
  {
    v12[0] = @"a";
    v12[1] = @"d";
    v13[0] = namedCopy;
    v13[1] = v9;
    v12[2] = @"t";
    v13[2] = &unk_284E0A1A8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    [(WKInterfaceObject *)self _sendValueChanged:v10 forProperty:propertyCopy];
  }

  else
  {
    [(WKInterfaceObject *)self _sendValueChanged:namedCopy forProperty:propertyCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendValueChanged:(id)changed forProperty:(id)property
{
  propertyCopy = property;
  changedCopy = changed;
  propertyIndex = [(WKInterfaceObject *)self propertyIndex];
  if ([(WKInterfaceObject *)self tableIndex]>= 1 && [(WKInterfaceObject *)self tableIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WKInterfaceObject tableIndex](self, "tableIndex")}];
    stringValue = [v8 stringValue];
    v10 = [propertyIndex stringByAppendingPathComponent:stringValue];

    propertyIndex = v10;
  }

  if ([(WKInterfaceObject *)self rowIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WKInterfaceObject rowIndex](self, "rowIndex")}];
    stringValue2 = [v11 stringValue];
    v13 = [propertyIndex stringByAppendingPathComponent:stringValue2];

    propertyIndex = v13;
  }

  viewControllerID = [(WKInterfaceObject *)self viewControllerID];
  [SPRemoteInterface setController:viewControllerID key:propertyIndex property:propertyCopy value:changedCopy];
}

- (void)setAlpha:(double)alpha
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:alpha];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"ap"];
}

- (void)setWidth:(double)width
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"wd"];
}

- (void)setHeight:(double)height
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"ht"];
}

- (void)setRelativeWidth:(double)width withAdjustment:(double)adjustment
{
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:adjustment];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(WKInterfaceObject *)self _sendValueChanged:v8 forProperty:@"rw"];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setRelativeHeight:(double)height withAdjustment:(double)adjustment
{
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:adjustment];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(WKInterfaceObject *)self _sendValueChanged:v8 forProperty:@"rh"];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setHorizontalAlignment:(int64_t)alignment
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:alignment];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"ha"];
}

- (void)setVerticalAlignment:(int64_t)alignment
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:alignment];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"va"];
}

- (void)setRotation:(double)rotation
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:rotation];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"ro"];
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  v4 = [identifier copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"Ai"];
}

- (void)setAccessibilityLabel:(id)label
{
  v4 = [label copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"Al"];
}

- (void)setAccessibilityHint:(id)hint
{
  v4 = [hint copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"Ah"];
}

- (void)setAccessibilityValue:(id)value
{
  v4 = [value copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"Av"];
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:traits];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"At"];
}

- (void)setAccessibilityImageRegions:(id)regions
{
  v31 = *MEMORY[0x277D85DE8];
  regionsCopy = regions;
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = regionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        label = [v11 label];

        if (label)
        {
          [v11 frame];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v5 addObject:v19];

          v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
          [v5 addObject:v20];

          v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
          [v5 addObject:v21];

          v22 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
          [v5 addObject:v22];

          label2 = [v11 label];
          v24 = [label2 copy];
          [v5 addObject:v24];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  [(WKInterfaceObject *)self _sendValueChanged:v5 forProperty:@"Ar"];
  v25 = *MEMORY[0x277D85DE8];
}

@end