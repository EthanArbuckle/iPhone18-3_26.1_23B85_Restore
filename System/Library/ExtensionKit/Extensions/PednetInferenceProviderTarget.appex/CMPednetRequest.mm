@interface CMPednetRequest
- (void)setArrays:(const float *)arrays :(int64_t)a4 :(const float *)a5 :(int64_t)a6 :(const float *)a7 :(int64_t)a8 :(const float *)a9 :(int64_t)self0 :(const float *)self1 :(int64_t)self2 :(const float *)self3 :(int64_t)self4 :(const float *)self5 :(int64_t)self6;
- (void)setTimestamp:(unint64_t)timestamp;
@end

@implementation CMPednetRequest

- (void)setTimestamp:(unint64_t)timestamp
{
  v4 = *((swift_isaMask & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v8);
  *v7 = timestamp;
  v6(v8, 0);
}

- (void)setArrays:(const float *)arrays :(int64_t)a4 :(const float *)a5 :(int64_t)a6 :(const float *)a7 :(int64_t)a8 :(const float *)a9 :(int64_t)self0 :(const float *)self1 :(int64_t)self2 :(const float *)self3 :(int64_t)self4 :(const float *)self5 :(int64_t)self6
{
  selfCopy = self;
  CMPednetRequest.setArrays(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(arrays, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

@end