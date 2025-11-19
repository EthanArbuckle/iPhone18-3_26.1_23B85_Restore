@interface SRFetchRequest
- (SRFetchRequest)init;
- (void)dealloc;
@end

@implementation SRFetchRequest

- (SRFetchRequest)init
{
  v5.receiver = self;
  v5.super_class = SRFetchRequest;
  v2 = [(SRFetchRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v2 + 3) = +[SRDevice currentDevice];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRFetchRequest;
  [(SRFetchRequest *)&v3 dealloc];
}

@end