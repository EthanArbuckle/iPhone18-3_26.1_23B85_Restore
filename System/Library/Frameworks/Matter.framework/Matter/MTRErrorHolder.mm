@interface MTRErrorHolder
- (ChipError)error;
- (MTRErrorHolder)initWithError:(ChipError)a3;
@end

@implementation MTRErrorHolder

- (MTRErrorHolder)initWithError:(ChipError)a3
{
  mFile = a3.mFile;
  v4 = *&a3.mError;
  v9.receiver = self;
  v9.super_class = MTRErrorHolder;
  v5 = [(MTRErrorHolder *)&v9 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_error.mError = v4;
    v5->_error.mFile = mFile;
    v7 = v5;
  }

  return v6;
}

- (ChipError)error
{
  mFile = self->_error.mFile;
  v3 = *&self->_error.mError;
  result.mFile = mFile;
  result.mError = v3;
  result.mLine = HIDWORD(v3);
  return result;
}

@end