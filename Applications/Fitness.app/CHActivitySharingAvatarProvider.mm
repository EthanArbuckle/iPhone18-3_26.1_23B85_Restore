@interface CHActivitySharingAvatarProvider
+ (id)fetchAvatarImageForFriend:(id)friend diameter:(double)diameter;
- (CHActivitySharingAvatarProvider)init;
@end

@implementation CHActivitySharingAvatarProvider

+ (id)fetchAvatarImageForFriend:(id)friend diameter:(double)diameter
{
  swift_getObjCClassMetadata();
  friendCopy = friend;
  v7 = sub_100549740(friendCopy, diameter);

  return v7;
}

- (CHActivitySharingAvatarProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivitySharingAvatarProvider();
  return [(CHActivitySharingAvatarProvider *)&v3 init];
}

@end