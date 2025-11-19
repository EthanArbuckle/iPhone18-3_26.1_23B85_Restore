@interface DDMatchPostalAddress
- (DDMatchPostalAddress)initWithDDScannerResult:(id)a3;
@end

@implementation DDMatchPostalAddress

- (DDMatchPostalAddress)initWithDDScannerResult:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DDMatchPostalAddress;
  v5 = [(DDMatch *)&v23 initWithDDScannerResult:v4];
  if (v5)
  {
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v6 = [v4 getStreet:&v22 city:&v21 state:&v20 zip:&v19 country:&v18];
    v7 = v22;
    v17 = v22;
    v8 = v21;
    v16 = v21;
    v9 = v20;
    v15 = v20;
    v10 = v19;
    v11 = v19;
    v12 = v18;
    v13 = v18;
    if (v6)
    {
      objc_storeStrong(&v5->_street, v7);
      objc_storeStrong(&v5->_city, v8);
      objc_storeStrong(&v5->_state, v9);
      objc_storeStrong(&v5->_postalCode, v10);
      objc_storeStrong(&v5->_country, v12);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDMatchPostalAddress initWithDDScannerResult:];
    }
  }

  return v5;
}

@end