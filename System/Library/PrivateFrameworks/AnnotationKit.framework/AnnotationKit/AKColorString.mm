@interface AKColorString
- (AKColorString)initWithCoder:(id)coder;
- (AKColorString)initWithString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKColorString

- (AKColorString)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = AKColorString;
  v6 = [(AKColorString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, string);
  }

  return v7;
}

- (AKColorString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AKColorString;
  v5 = [(AKColorString *)&v8 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCoder:coderCopy];
    [(AKColorString *)v5 setString:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = [(AKColorString *)self string];
  [string encodeWithCoder:coderCopy];
}

@end