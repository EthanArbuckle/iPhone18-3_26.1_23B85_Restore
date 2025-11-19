@interface AKColorString
- (AKColorString)initWithCoder:(id)a3;
- (AKColorString)initWithString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKColorString

- (AKColorString)initWithString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AKColorString;
  v6 = [(AKColorString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, a3);
  }

  return v7;
}

- (AKColorString)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKColorString;
  v5 = [(AKColorString *)&v8 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCoder:v4];
    [(AKColorString *)v5 setString:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AKColorString *)self string];
  [v5 encodeWithCoder:v4];
}

@end