@interface CLKGaugeProvider
+ (CLKGaugeProvider)providerWithJSONObjectRepresentation:(id)a3 bundle:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsTimerUpdates;
- (BOOL)validate;
- (CLKGaugeProvider)initWithCoder:(id)a3;
- (CLKGaugeProvider)initWithJSONObjectRepresentation:(id)a3;
- (double)progressFractionForNow:(id)a3;
- (id)JSONObjectRepresentation;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)startUpdatesWithHandler:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)stopUpdatesForToken:(id)a3;
@end

@implementation CLKGaugeProvider

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CLKGaugeProvider;
  return [(CLKGaugeProvider *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"_StyleKey"];
  [v5 encodeObject:self->_gaugeColors forKey:@"_GaugeColorsKey"];
  [v5 encodeObject:self->_gaugeColorLocations forKey:@"_GaugeColorLocationsKey"];
  [v5 encodeBool:self->_finalized forKey:@"Finalized"];
  [v5 encodeObject:self->_accessibilityLabel forKey:@"AccessibilityLabel"];
}

- (CLKGaugeProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLKGaugeProvider *)self _init];
  if (v5)
  {
    v5->_style = [v4 decodeIntegerForKey:@"_StyleKey"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_GaugeColorsKey"];
    gaugeColors = v5->_gaugeColors;
    v5->_gaugeColors = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_GaugeColorLocationsKey"];
    gaugeColorLocations = v5->_gaugeColorLocations;
    v5->_gaugeColorLocations = v14;

    v5->_finalized = [v4 decodeBoolForKey:@"Finalized"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccessibilityLabel"];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v16;
  }

  return v5;
}

- (BOOL)needsTimerUpdates
{
  objc_opt_class();
  CLKRequestConcreteImplementation(self);
  return 0;
}

- (double)progressFractionForNow:(id)a3
{
  objc_opt_class();
  CLKRequestConcreteImplementation(self);
  return 0.0;
}

- (id)startUpdatesWithHandler:(id)a3
{
  objc_opt_class();
  CLKRequestConcreteImplementation(self);
  return &unk_284A340E0;
}

- (void)stopUpdatesForToken:(id)a3
{
  objc_opt_class();

  CLKRequestConcreteImplementation(self);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (style = self->_style, style == [v4 style]))
  {
    gaugeColors = self->_gaugeColors;
    v7 = [v4 gaugeColors];
    if (CLKEqualObjects(gaugeColors, v7))
    {
      gaugeColorLocations = self->_gaugeColorLocations;
      v9 = [v4 gaugeColorLocations];
      if (CLKEqualObjects(gaugeColorLocations, v9))
      {
        accessibilityLabel = self->_accessibilityLabel;
        v11 = [v4 accessibilityLabel];
        v12 = CLKEqualObjects(accessibilityLabel, v11);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_style];
  v4 = [v3 hash];
  v5 = [(NSArray *)self->_gaugeColors hash]* 1000000.0 + v4 * 10000000.0;
  v6 = v5 + [(NSArray *)self->_gaugeColorLocations hash]* 100000.0;
  v7 = (v6 + [(NSString *)self->_accessibilityLabel hash]* 10000.0);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
    *(v5 + 16) = self->_style;
    objc_storeStrong((v5 + 24), self->_gaugeColors);
    objc_storeStrong((v5 + 32), self->_gaugeColorLocations);
    v6 = [(NSString *)self->_accessibilityLabel copy];
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;

    return v5;
  }
}

+ (CLKGaugeProvider)providerWithJSONObjectRepresentation:(id)a3 bundle:(id)a4
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", v4}];
  }

  v5 = [v4 objectForKeyedSubscript:@"class"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"class", v5}];
  }

  v6 = NSClassFromString(v5);
  if (([(objc_class *)v6 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"class: %@ must be a CLKGaugeProvider class", v5}];
  }

  v7 = [[v6 alloc] initWithJSONObjectRepresentation:v4];

  return v7;
}

- (CLKGaugeProvider)initWithJSONObjectRepresentation:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = [(CLKGaugeProvider *)self _init];
  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", v4}];
    }

    v27 = v4;
    v24 = [v4 objectForKeyedSubscript:@"gaugeStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26->_style = [v24 integerValue];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a integer - invalid value: %@", @"gaugeStyle", v24}];
    }

    v25 = [v4 objectForKeyedSubscript:@"gaugeColors"];
    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [MEMORY[0x277CBEB18] array];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v6 = v25;
        v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v7)
        {
          v8 = *v33;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v33 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v32 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v11 = [objc_alloc(MEMORY[0x277D75348]) initWithJSONObjectRepresentation:v10];
                [(NSArray *)v5 addObject:v11];
              }

              else
              {
                [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value in key '%@' must be a dictionary - invalid value: %@", @"gaugeColors", v10}];
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
          }

          while (v7);
        }

        gaugeColors = v26->_gaugeColors;
        v26->_gaugeColors = v5;
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a array - invalid value: %@", @"gaugeColors", v25}];
      }
    }

    v13 = [v27 objectForKeyedSubscript:@"gaugeColorLocations"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v16)
        {
          v17 = *v29;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v28 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v14 addObject:v19];
              }

              else
              {
                [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for gaugeColorLocation must be a number - invalid value: %@", v19}];
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v16);
        }

        if ([v14 count])
        {
          v20 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v14];
          gaugeColorLocations = v26->_gaugeColorLocations;
          v26->_gaugeColorLocations = v20;
        }
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a array - invalid value: %@", @"gaugeColorLocations", v13}];
      }
    }

    v22 = [v27 objectForKeyedSubscript:@"accessibilityLabel"];
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"accessibilityLabel", v22}];
      }

      objc_storeStrong(&v26->_accessibilityLabel, v22);
    }

    v4 = v27;
  }

  return v26;
}

- (id)JSONObjectRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKeyedSubscript:@"class"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_style];
  [v3 setObject:v6 forKeyedSubscript:@"gaugeStyle"];

  v7 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_gaugeColors;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) JSONObjectRepresentation];
        [v7 addObject:v13];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [v3 setObject:v7 forKeyedSubscript:@"gaugeColors"];
  gaugeColorLocations = self->_gaugeColorLocations;
  if (gaugeColorLocations)
  {
    [v3 setObject:gaugeColorLocations forKeyedSubscript:@"gaugeColorLocations"];
  }

  [v3 setObject:self->_accessibilityLabel forKeyedSubscript:{@"accessibilityLabel", v16}];

  return v3;
}

- (BOOL)validate
{
  v25 = *MEMORY[0x277D85DE8];
  gaugeColors = self->_gaugeColors;
  if (!gaugeColors)
  {
    return 1;
  }

  if (!self->_gaugeColorLocations)
  {
    return 1;
  }

  v4 = [(NSArray *)gaugeColors count];
  if (v4 == [(NSArray *)self->_gaugeColorLocations count])
  {
    return 1;
  }

  v6 = CLKLoggingObjectForDomain(10);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = objc_opt_class();
    v8 = self->_gaugeColors;
    v9 = v7;
    v10 = [(NSArray *)v8 count];
    v11 = [(NSArray *)self->_gaugeColorLocations count];
    v13 = 138413570;
    v14 = @"gaugeColors";
    v15 = 2112;
    v16 = @"gaugeColorLocations";
    v17 = 2112;
    v18 = v7;
    v19 = 2048;
    v20 = v10;
    v21 = 2048;
    v22 = v11;
    v23 = 2112;
    v24 = objc_opt_class();
    v12 = v24;
    _os_log_fault_impl(&dword_23702D000, v6, OS_LOG_TYPE_FAULT, "Properties '%@' and '%@' on %@ have different counts (%lu and %lu). They must have the same count when passing %@ to the complication data handler.", &v13, 0x3Eu);
  }

  return 0;
}

@end