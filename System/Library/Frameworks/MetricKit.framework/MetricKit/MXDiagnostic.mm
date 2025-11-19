@interface MXDiagnostic
- (MXDiagnostic)initWithCoder:(id)a3;
- (MXDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4;
- (MXDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 signpostData:(id)a5 andPID:(int)a6;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXDiagnostic

- (MXDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MXDiagnostic;
  v9 = [(MXDiagnostic *)&v16 init];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = 0;
  if (v7 && v8)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v9->_measurementFormatter;
    v9->_measurementFormatter = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v9->_measurementFormatter setLocale:v13];

    [(NSMeasurementFormatter *)v9->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v9->_measurementFormatter setUnitStyle:2];
    v14 = [(NSMeasurementFormatter *)v9->_measurementFormatter numberFormatter];
    [v14 setMaximumFractionDigits:0];

    objc_storeStrong(&v9->_metaData, a3);
    objc_storeStrong(&v9->_applicationVersion, a4);
LABEL_5:
    v10 = v9;
  }

  return v10;
}

- (MXDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 signpostData:(id)a5 andPID:(int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = MXDiagnostic;
  v14 = [(MXDiagnostic *)&v21 init];
  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = 0;
  if (v11 && v12)
  {
    v16 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v14->_measurementFormatter;
    v14->_measurementFormatter = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v14->_measurementFormatter setLocale:v18];

    [(NSMeasurementFormatter *)v14->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v14->_measurementFormatter setUnitStyle:2];
    v19 = [(NSMeasurementFormatter *)v14->_measurementFormatter numberFormatter];
    [v19 setMaximumFractionDigits:0];

    objc_storeStrong(&v14->_metaData, a3);
    objc_storeStrong(&v14->_applicationVersion, a4);
    objc_storeStrong(&v14->_signpostData, a5);
    v14->_pid = a6;
LABEL_5:
    v15 = v14;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  metaData = self->_metaData;
  v5 = a3;
  [v5 encodeObject:metaData forKey:@"diagnosticMetaData"];
  [v5 encodeObject:self->_applicationVersion forKey:@"appVersion"];
  [v5 encodeObject:self->_signpostData forKey:@"signpostData"];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_pid];
  [v5 encodeObject:v6 forKey:@"pid"];
}

- (MXDiagnostic)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MXDiagnostic;
  v5 = [(MXDiagnostic *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v5->_measurementFormatter;
    v5->_measurementFormatter = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v5->_measurementFormatter setLocale:v8];

    [(NSMeasurementFormatter *)v5->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v5->_measurementFormatter setUnitStyle:2];
    v9 = [(NSMeasurementFormatter *)v5->_measurementFormatter numberFormatter];
    [v9 setMaximumFractionDigits:0];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diagnosticMetaData"];
    metaData = v5->_metaData;
    v5->_metaData = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appVersion"];
    applicationVersion = v5->_applicationVersion;
    v5->_applicationVersion = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"signpostData"];
    signpostData = v5->_signpostData;
    v5->_signpostData = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
    v5->_pid = [v19 intValue];
  }

  return v5;
}

- (id)toDictionary
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  metaData = self->_metaData;
  if (metaData)
  {
    v6 = [(MXMetaData *)metaData toDictionary];
    [v4 addEntriesFromDictionary:v6];
  }

  applicationVersion = self->_applicationVersion;
  if (applicationVersion)
  {
    [v4 setObject:applicationVersion forKey:@"appVersion"];
  }

  if (self->_signpostData)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_signpostData;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"signpostData"];
  }

  if ([v4 count])
  {
    v15 = [v4 copy];
    [v3 setObject:v15 forKey:@"diagnosticMetaData"];
  }

  [v3 setObject:@"1.0.0" forKey:@"version"];

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSData)JSONRepresentation
{
  v2 = [(MXDiagnostic *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end