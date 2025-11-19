@interface CardRevealController
- (_TtC17SequoiaTranslator20CardRevealController)init;
@end

@implementation CardRevealController

- (_TtC17SequoiaTranslator20CardRevealController)init
{
  v2 = (self + OBJC_IVAR____TtC17SequoiaTranslator20CardRevealController_sourceFrame);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (self + OBJC_IVAR____TtC17SequoiaTranslator20CardRevealController_targetFrame);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator20CardRevealController_cardSeparation) = 0x4020000000000000;
  v4 = (&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator20CardRevealController_textSizeLimit);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator20CardRevealController_dictionaryAvailable) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CardRevealController();
  return [(CardRevealController *)&v6 init];
}

@end