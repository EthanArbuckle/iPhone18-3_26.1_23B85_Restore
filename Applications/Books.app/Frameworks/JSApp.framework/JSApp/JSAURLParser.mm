@interface JSAURLParser
- (JSAURLParser)init;
- (id)processCampaignAttributedURL:(id)l;
- (void)isCommerceUIURLWithCallback:(id)callback :(id)a4;
- (void)typeForURL:(NSURL *)l completion:(id)completion;
@end

@implementation JSAURLParser

- (void)typeForURL:(NSURL *)l completion:(id)completion
{
  v7 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = l;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_8468C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_A11F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_A11F8;
  v15[5] = v14;
  lCopy = l;
  selfCopy = self;
  sub_55564(0, 0, v10, &unk_A1200, v15);
}

- (JSAURLParser)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSAURLParser *)&v3 init];
}

- (void)isCommerceUIURLWithCallback:(id)callback :(id)a4
{
  v6 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_843AC();
  v12 = v11;
  v13 = sub_8468C();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v10;
  v14[6] = v12;
  v14[7] = a4;
  v15 = a4;
  selfCopy = self;
  v17 = v15;
  sub_3BBC8(0, 0, v9, &unk_A11E0, v14);

  sub_38328(v9, &qword_CA5E8, &qword_A0850);
}

- (id)processCampaignAttributedURL:(id)l
{
  v4 = sub_843AC();
  v6 = v5;
  selfCopy = self;
  _s5JSApp9URLParserC28processCampaignAttributedURLySo7JSValueCSSF_0(v4, v6);
  v9 = v8;

  return v9;
}

@end