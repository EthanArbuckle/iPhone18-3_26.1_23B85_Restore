@interface EncoderByNSCoding
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeBytes:(const char *)bytes length:(int64_t)length forKey:(id)key;
- (void)encodeCMTime:(id *)time forKey:(id)key;
- (void)encodeCMTimeRange:(id *)range forKey:(id)key;
- (void)encodeConditionalObject:(id)object forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation EncoderByNSCoding

- (void)encodeCMTime:(id *)time forKey:(id)key
{
  sub_1C9A924A8();
  selfCopy = self;
  sub_1C9981D30();
}

- (void)encodeCMTimeRange:(id *)range forKey:(id)key
{
  sub_1C9A924A8();
  selfCopy = self;
  sub_1C9981DB8();
}

- (void)encodeObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  sub_1C9A924A8();

  sub_1C9981EEC(v10);

  sub_1C97A59D0(v10);
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  sub_1C9A924A8();
  selfCopy = self;
  sub_1C998204C();
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  sub_1C9A924A8();
  selfCopy = self;
  sub_1C99821D4();
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  sub_1C9A924A8();
  selfCopy = self;
  sub_1C9982250();
}

- (void)encodeBytes:(const char *)bytes length:(int64_t)length forKey:(id)key
{
  sub_1C9A924A8();
  selfCopy = self;
  sub_1C99822CC(bytes, length);
}

- (void)encodeConditionalObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    keyCopy2 = key;
    selfCopy2 = self;
  }

  sub_1C9A924A8();

  sub_1C998244C();
}

@end