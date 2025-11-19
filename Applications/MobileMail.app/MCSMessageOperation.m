@interface MCSMessageOperation
- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5;
@end

@implementation MCSMessageOperation

- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(MCSMessageOperation *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MCSMessageOperation commitToMessages:failures:newMessages:]", "MCSMessageOperation.m", 17, "0");
}

@end