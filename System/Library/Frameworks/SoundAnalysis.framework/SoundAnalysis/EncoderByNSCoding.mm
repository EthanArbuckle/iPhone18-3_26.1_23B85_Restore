@interface EncoderByNSCoding
- (void)encodeBool:(BOOL)a3 forKey:(id)a4;
- (void)encodeBytes:(const char *)a3 length:(int64_t)a4 forKey:(id)a5;
- (void)encodeCMTime:(id *)a3 forKey:(id)a4;
- (void)encodeCMTimeRange:(id *)a3 forKey:(id)a4;
- (void)encodeConditionalObject:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation EncoderByNSCoding

- (void)encodeCMTime:(id *)a3 forKey:(id)a4
{
  sub_1C9A924A8();
  v5 = self;
  sub_1C9981D30();
}

- (void)encodeCMTimeRange:(id *)a3 forKey:(id)a4
{
  sub_1C9A924A8();
  v5 = self;
  sub_1C9981DB8();
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_1C9A924A8();

  sub_1C9981EEC(v10);

  sub_1C97A59D0(v10);
}

- (void)encodeBool:(BOOL)a3 forKey:(id)a4
{
  sub_1C9A924A8();
  v5 = self;
  sub_1C998204C();
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  sub_1C9A924A8();
  v5 = self;
  sub_1C99821D4();
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  sub_1C9A924A8();
  v5 = self;
  sub_1C9982250();
}

- (void)encodeBytes:(const char *)a3 length:(int64_t)a4 forKey:(id)a5
{
  sub_1C9A924A8();
  v8 = self;
  sub_1C99822CC(a3, a4);
}

- (void)encodeConditionalObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v8 = a4;
    v9 = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = a4;
    v7 = self;
  }

  sub_1C9A924A8();

  sub_1C998244C();
}

@end