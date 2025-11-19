@interface CHActivitySharingAvatarProvider
+ (id)fetchAvatarImageForFriend:(id)a3 diameter:(double)a4;
- (CHActivitySharingAvatarProvider)init;
@end

@implementation CHActivitySharingAvatarProvider

+ (id)fetchAvatarImageForFriend:(id)a3 diameter:(double)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_100549740(v6, a4);

  return v7;
}

- (CHActivitySharingAvatarProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivitySharingAvatarProvider();
  return [(CHActivitySharingAvatarProvider *)&v3 init];
}

@end