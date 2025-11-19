@interface BKCloseBookAnimator
- (BKCloseBookAnimator)init;
- (BKCloseBookAnimator)initWithContentHelper:(id)a3 coverSource:(id)a4;
- (UIImage)coverImage;
- (id)animationComplete;
- (id)spreadSnapshot;
- (void)animateTransition:(id)a3;
- (void)setAnimationComplete:(id)a3;
- (void)setCoverImage:(id)a3;
- (void)setSpreadSnapshot:(id)a3;
@end

@implementation BKCloseBookAnimator

- (UIImage)coverImage
{
  if (*(self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
  }

  return v3;
}

- (void)setCoverImage:(id)a3
{
  if (a3)
  {
    v3 = self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent;
    v4 = *(self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
    v5 = *(self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 8);
    *v3 = a3;
    *(v3 + 1) = 0;
    v6 = v3[16];
    v3[16] = 0;
    v9 = self;
    v8 = a3;
    sub_100427848(v4, v5, v6);
  }
}

- (id)spreadSnapshot
{
  v4 = (self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
  if (*(self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 16) == 1)
  {
    v9[10] = v2;
    v10 = v3;
    v5 = v4[1];
    v9[4] = *v4;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100427ABC;
    v9[3] = &unk_100A1BBE8;
    v6 = _Block_copy(v9);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSpreadSnapshot:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent;
    v8 = *(self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
    v9 = *(self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 8);
    *v7 = sub_10042A264;
    *(v7 + 1) = v6;
    v10 = v7[16];
    v7[16] = 1;
    v11 = self;
    sub_100427848(v8, v9, v10);
  }
}

- (id)animationComplete
{
  v2 = (self + OBJC_IVAR___BKCloseBookAnimator_animationComplete);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A1BB70;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAnimationComplete:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1002427EC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BKCloseBookAnimator_animationComplete);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_100007020(v7);
}

- (BKCloseBookAnimator)initWithContentHelper:(id)a3 coverSource:(id)a4
{
  v4 = self + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 2;
  v5 = (self + OBJC_IVAR___BKCloseBookAnimator_animationComplete);
  *v5 = 0;
  v5[1] = 0;
  *(self + OBJC_IVAR___BKCloseBookAnimator_contentHelper) = a3;
  *(self + OBJC_IVAR___BKCloseBookAnimator_coverSource) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CloseBookAnimator();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(BKCloseBookAnimator *)&v7 init];
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  CloseBookAnimator.animateTransition(using:)(a3);
  swift_unknownObjectRelease();
}

- (BKCloseBookAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end