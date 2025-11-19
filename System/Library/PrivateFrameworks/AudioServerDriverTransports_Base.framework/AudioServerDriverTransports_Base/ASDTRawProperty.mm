@interface ASDTRawProperty
- (ASDTRawProperty)initWithConfig:(id)a3;
- (BOOL)storePropertyValue:(id)a3;
@end

@implementation ASDTRawProperty

- (ASDTRawProperty)initWithConfig:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASDTRawProperty;
  v5 = [(ASDTCustomProperty *)&v11 initWithConfig:v4 propertyDataType:1918990199 qualifierDataType:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  [(ASDTCustomProperty *)v5 setCacheMode:2];
  v7 = [v4 asdtPropertyValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASDTRawProperty *)v6 storePropertyValue:v7];

LABEL_4:
    v8 = v6;
    goto LABEL_8;
  }

  v9 = ASDTBaseLogType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ASDTRawProperty *)v6 initWithConfig:v9];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)storePropertyValue:(id)a3
{
  v4 = a3;
  -[ASDTCustomProperty setPropertyValueSize:](self, "setPropertyValueSize:", [v4 length]);
  v6.receiver = self;
  v6.super_class = ASDTRawProperty;
  LOBYTE(self) = [(ASDTCustomProperty *)&v6 storePropertyValue:v4];

  return self;
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = @"Value";
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "%@: Key %@ must specify an NSData object.", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end