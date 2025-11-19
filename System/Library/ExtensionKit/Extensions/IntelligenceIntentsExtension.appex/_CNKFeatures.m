@interface _CNKFeatures
+ (_CNKFeatures)sharedInstance;
- (_CNKFeatures)init;
@end

@implementation _CNKFeatures

+ (_CNKFeatures)sharedInstance
{
  if (qword_100034308 != -1)
  {
    swift_once();
  }

  v3 = static Features.shared;

  return v3;
}

- (_CNKFeatures)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Features();
  return [(_CNKFeatures *)&v3 init];
}

@end