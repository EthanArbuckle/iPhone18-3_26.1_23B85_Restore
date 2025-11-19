@interface SigX
+ (basic_string<char,)getVersion;
- (SigX)initWithSignatureType:(int)a3 sampleRate:(unsigned int)a4 signatureOptions:(int)a5 error:(id *)a6;
- (id)ConvertGenericException:(const exception *)a3;
- (id)ConvertSigException:(const SigException *)a3;
- (id)ConvertSigxException:(const SigxException *)a3;
- (id)FillUnknownError;
- (void)dealloc;
@end

@implementation SigX

- (void)dealloc
{
  mySigX = self->mySigX;
  if (mySigX)
  {
    v3 = *mySigX;
    *mySigX = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3, a2);
    }

    operator delete();
  }

  v4.receiver = self;
  v4.super_class = SigX;
  [(SigX *)&v4 dealloc];
}

- (SigX)initWithSignatureType:(int)a3 sampleRate:(unsigned int)a4 signatureOptions:(int)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = SigX;
  if ([(SigX *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (id)FillUnknownError
{
  v2 = [NSDictionary dictionaryWithObject:@"Something unexpected happened." forKey:NSLocalizedDescriptionKey];
  v3 = [NSError errorWithDomain:@"com.shazam.sigx" code:-200 userInfo:v2];

  return v3;
}

- (id)ConvertGenericException:(const exception *)a3
{
  v3 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", (*(a3->var0 + 2))(a3, a2), +[NSString defaultCStringEncoding]);
  v4 = [NSDictionary dictionaryWithObject:v3 forKey:NSLocalizedDescriptionKey];
  v5 = [NSError errorWithDomain:@"com.shazam.sigx" code:-100 userInfo:v4];

  return v5;
}

- (id)ConvertSigException:(const SigException *)a3
{
  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", (*(a3->var0 + 2))(a3, a2), +[NSString defaultCStringEncoding]);
  var0 = a3->var2.var0;
  v6 = [NSDictionary dictionaryWithObject:v4 forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"com.shazam.sigvalidation" code:var0 userInfo:v6];

  return v7;
}

- (id)ConvertSigxException:(const SigxException *)a3
{
  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", (*(a3->var0 + 2))(a3, a2), +[NSString defaultCStringEncoding]);
  var0 = a3->var2.var0;
  v6 = [NSDictionary dictionaryWithObject:v4 forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"com.shazam.sigx" code:var0 userInfo:v6];

  return v7;
}

+ (basic_string<char,)getVersion
{
  sub_100004930(&v3, "7.2.1");
  result = std::string::append(&v3, " (compilation mode 'debug', built on 'OS X')");
  *retstr = *result;
  result->var0.var1.var1 = 0;
  *(&result->var0.var1 + 2) = 0;
  result->var0.var1.var0 = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  return result;
}

@end