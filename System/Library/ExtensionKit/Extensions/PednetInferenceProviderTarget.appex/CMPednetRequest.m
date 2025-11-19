@interface CMPednetRequest
- (void)setArrays:(const float *)a3 :(int64_t)a4 :(const float *)a5 :(int64_t)a6 :(const float *)a7 :(int64_t)a8 :(const float *)a9 :(int64_t)a10 :(const float *)a11 :(int64_t)a12 :(const float *)a13 :(int64_t)a14 :(const float *)a15 :(int64_t)a16;
- (void)setTimestamp:(unint64_t)a3;
@end

@implementation CMPednetRequest

- (void)setTimestamp:(unint64_t)a3
{
  v4 = *((swift_isaMask & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v8);
  *v7 = a3;
  v6(v8, 0);
}

- (void)setArrays:(const float *)a3 :(int64_t)a4 :(const float *)a5 :(int64_t)a6 :(const float *)a7 :(int64_t)a8 :(const float *)a9 :(int64_t)a10 :(const float *)a11 :(int64_t)a12 :(const float *)a13 :(int64_t)a14 :(const float *)a15 :(int64_t)a16
{
  v22 = self;
  CMPednetRequest.setArrays(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

@end