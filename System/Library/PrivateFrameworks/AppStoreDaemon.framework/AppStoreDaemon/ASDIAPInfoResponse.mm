@interface ASDIAPInfoResponse
- (ASDIAPInfoResponse)initWithCoder:(id)coder;
- (ASDIAPInfoResponse)initWithError:(id)error;
- (ASDIAPInfoResponse)initWithIAPs:(id)ps;
@end

@implementation ASDIAPInfoResponse

- (ASDIAPInfoResponse)initWithIAPs:(id)ps
{
  psCopy = ps;
  v9.receiver = self;
  v9.super_class = ASDIAPInfoResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [psCopy copy];
    iaps = v5->_iaps;
    v5->_iaps = v6;
  }

  return v5;
}

- (ASDIAPInfoResponse)initWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = ASDIAPInfoResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:error];
  v4 = v3;
  if (v3)
  {
    iaps = v3->_iaps;
    v3->_iaps = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (ASDIAPInfoResponse)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ASDIAPInfoResponseIAPsCodingKey"];

  v9 = [(ASDIAPInfoResponse *)self initWithIAPs:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end