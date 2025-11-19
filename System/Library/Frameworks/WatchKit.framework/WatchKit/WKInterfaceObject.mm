@interface WKInterfaceObject
- (id)_initWithInterfaceProperty:(id)a3 viewControllerID:(id)a4 propertyIndex:(int64_t)a5 tableIndex:(int64_t)a6 rowIndex:(int64_t)a7;
- (void)_sendValueChanged:(id)a3 forProperty:(id)a4;
- (void)_setImage:(id)a3 forProperty:(id)a4;
- (void)_setImageData:(id)a3 forProperty:(id)a4;
- (void)_setImageNamed:(id)a3 forProperty:(id)a4;
- (void)setAccessibilityHint:(id)a3;
- (void)setAccessibilityIdentifier:(id)a3;
- (void)setAccessibilityImageRegions:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setAccessibilityValue:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setHeight:(double)a3;
- (void)setHorizontalAlignment:(int64_t)a3;
- (void)setRelativeHeight:(double)a3 withAdjustment:(double)a4;
- (void)setRelativeWidth:(double)a3 withAdjustment:(double)a4;
- (void)setRotation:(double)a3;
- (void)setVerticalAlignment:(int64_t)a3;
- (void)setWidth:(double)a3;
@end

@implementation WKInterfaceObject

- (id)_initWithInterfaceProperty:(id)a3 viewControllerID:(id)a4 propertyIndex:(int64_t)a5 tableIndex:(int64_t)a6 rowIndex:(int64_t)a7
{
  v9 = a5;
  v16.receiver = self;
  v16.super_class = WKInterfaceObject;
  v11 = a4;
  v12 = a3;
  v13 = [(WKInterfaceObject *)&v16 init];
  [(WKInterfaceObject *)v13 setInterfaceProperty:v12];

  [(WKInterfaceObject *)v13 setViewControllerID:v11];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (v9 + 1)];
  [(WKInterfaceObject *)v13 setPropertyIndex:v14];

  [(WKInterfaceObject *)v13 setRowIndex:a7];
  [(WKInterfaceObject *)v13 setTableIndex:a6];
  return v13;
}

- (void)_setImage:(id)a3 forProperty:(id)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [SPRemoteInterface SerializablePropertyValue:a3];
  if (v7)
  {
    v8 = +[SPCompanionAssetCache sharedInstance];
    v9 = [v8 keyFromImageData:v7];

    v10 = +[SPCompanionAssetCache sharedInstance];
    v11 = [v10 imageInTransientCache:v9];

    if (v11)
    {
      [(WKInterfaceObject *)self _sendValueChanged:v9 forProperty:v6];
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
      [(WKInterfaceObject *)self _sendValueChanged:v12 forProperty:v6];
      v13 = +[SPCompanionAssetCache sharedInstance];
      [v13 addImageReferenceToTransientCache:v7 withName:v9];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setImageData:(id)a3 forProperty:(id)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[SPCompanionAssetCache sharedInstance];
    v9 = [v8 keyFromImageData:v6];

    v10 = +[SPCompanionAssetCache sharedInstance];
    v11 = [v10 imageInTransientCache:v9];

    if (v11)
    {
      [(WKInterfaceObject *)self _sendValueChanged:v9 forProperty:v7];
    }

    else
    {
      v15[0] = @"a";
      v15[1] = @"d";
      v16[0] = v9;
      v16[1] = v6;
      v15[2] = @"t";
      v16[2] = &unk_284E0A190;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
      [(WKInterfaceObject *)self _sendValueChanged:v12 forProperty:v7];
      v13 = +[SPCompanionAssetCache sharedInstance];
      [v13 addImageReferenceToTransientCache:v6 withName:v9];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setImageNamed:(id)a3 forProperty:(id)a4
{
  v13[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SPCompanionAssetCache sharedInstance];
  v9 = [v8 dataForImageWithName:v6];

  if (v9)
  {
    v12[0] = @"a";
    v12[1] = @"d";
    v13[0] = v6;
    v13[1] = v9;
    v12[2] = @"t";
    v13[2] = &unk_284E0A1A8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    [(WKInterfaceObject *)self _sendValueChanged:v10 forProperty:v7];
  }

  else
  {
    [(WKInterfaceObject *)self _sendValueChanged:v6 forProperty:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendValueChanged:(id)a3 forProperty:(id)a4
{
  v6 = a4;
  v7 = a3;
  v15 = [(WKInterfaceObject *)self propertyIndex];
  if ([(WKInterfaceObject *)self tableIndex]>= 1 && [(WKInterfaceObject *)self tableIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WKInterfaceObject tableIndex](self, "tableIndex")}];
    v9 = [v8 stringValue];
    v10 = [v15 stringByAppendingPathComponent:v9];

    v15 = v10;
  }

  if ([(WKInterfaceObject *)self rowIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WKInterfaceObject rowIndex](self, "rowIndex")}];
    v12 = [v11 stringValue];
    v13 = [v15 stringByAppendingPathComponent:v12];

    v15 = v13;
  }

  v14 = [(WKInterfaceObject *)self viewControllerID];
  [SPRemoteInterface setController:v14 key:v15 property:v6 value:v7];
}

- (void)setAlpha:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"ap"];
}

- (void)setWidth:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"wd"];
}

- (void)setHeight:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"ht"];
}

- (void)setRelativeWidth:(double)a3 withAdjustment:(double)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(WKInterfaceObject *)self _sendValueChanged:v8 forProperty:@"rw"];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setRelativeHeight:(double)a3 withAdjustment:(double)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(WKInterfaceObject *)self _sendValueChanged:v8 forProperty:@"rh"];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setHorizontalAlignment:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"ha"];
}

- (void)setVerticalAlignment:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"va"];
}

- (void)setRotation:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"ro"];
}

- (void)setAccessibilityIdentifier:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"Ai"];
}

- (void)setAccessibilityLabel:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"Al"];
}

- (void)setAccessibilityHint:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"Ah"];
}

- (void)setAccessibilityValue:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"Av"];
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"At"];
}

- (void)setAccessibilityImageRegions:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
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
        v12 = [v11 label];

        if (v12)
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

          v23 = [v11 label];
          v24 = [v23 copy];
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