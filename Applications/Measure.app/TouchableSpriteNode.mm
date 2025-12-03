@interface TouchableSpriteNode
- (_TtC7Measure19TouchableSpriteNode)init;
- (_TtC7Measure19TouchableSpriteNode)initWithCoder:(id)coder;
@end

@implementation TouchableSpriteNode

- (_TtC7Measure19TouchableSpriteNode)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC7Measure19TouchableSpriteNode_delegate] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TouchableSpriteNode *)&v5 init];
}

- (_TtC7Measure19TouchableSpriteNode)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC7Measure19TouchableSpriteNode_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TouchableSpriteNode *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end