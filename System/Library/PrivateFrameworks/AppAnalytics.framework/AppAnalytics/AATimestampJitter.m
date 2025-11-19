@interface AATimestampJitter
+ (AATimestampJitter)default;
- (AATimestampJitter)init;
- (id)withEnabled:(BOOL)a3;
- (id)withLowerBound:(double)a3;
- (id)withUpperBound:(double)a3;
@end

@implementation AATimestampJitter

+ (AATimestampJitter)default
{
  if (qword_1EDBC8A30 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBC8A38;

  return v3;
}

- (id)withEnabled:(BOOL)a3
{
  ObjectType = swift_getObjectType();
  v6 = *(&self->super.isa + OBJC_IVAR___AATimestampJitter_lowerBound);
  v7 = *(&self->super.isa + OBJC_IVAR___AATimestampJitter_upperBound);
  v8 = objc_allocWithZone(ObjectType);
  v8[OBJC_IVAR___AATimestampJitter_enabled] = a3;
  *&v8[OBJC_IVAR___AATimestampJitter_lowerBound] = v6;
  *&v8[OBJC_IVAR___AATimestampJitter_upperBound] = v7;
  v11.receiver = v8;
  v11.super_class = ObjectType;
  v9 = [(AATimestampJitter *)&v11 init];

  return v9;
}

- (id)withLowerBound:(double)a3
{
  ObjectType = swift_getObjectType();
  v6 = *(&self->super.isa + OBJC_IVAR___AATimestampJitter_enabled);
  v7 = *(&self->super.isa + OBJC_IVAR___AATimestampJitter_upperBound);
  v8 = objc_allocWithZone(ObjectType);
  v8[OBJC_IVAR___AATimestampJitter_enabled] = v6;
  *&v8[OBJC_IVAR___AATimestampJitter_lowerBound] = a3;
  *&v8[OBJC_IVAR___AATimestampJitter_upperBound] = v7;
  v11.receiver = v8;
  v11.super_class = ObjectType;
  v9 = [(AATimestampJitter *)&v11 init];

  return v9;
}

- (id)withUpperBound:(double)a3
{
  ObjectType = swift_getObjectType();
  v6 = *(&self->super.isa + OBJC_IVAR___AATimestampJitter_enabled);
  v7 = *(&self->super.isa + OBJC_IVAR___AATimestampJitter_lowerBound);
  v8 = objc_allocWithZone(ObjectType);
  v8[OBJC_IVAR___AATimestampJitter_enabled] = v6;
  *&v8[OBJC_IVAR___AATimestampJitter_lowerBound] = v7;
  *&v8[OBJC_IVAR___AATimestampJitter_upperBound] = a3;
  v11.receiver = v8;
  v11.super_class = ObjectType;
  v9 = [(AATimestampJitter *)&v11 init];

  return v9;
}

- (AATimestampJitter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end