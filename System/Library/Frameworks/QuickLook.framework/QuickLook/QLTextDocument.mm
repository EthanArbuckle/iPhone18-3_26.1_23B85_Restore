@interface QLTextDocument
- (BOOL)loadFromContents:(id)contents ofType:(id)type error:(id *)error;
- (NSAttributedString)attributedTextContent;
- (NSString)textContent;
- (_TtC9QuickLook14QLTextDocument)initWithFileURL:(id)l;
- (id)contentsForType:(id)type error:(id *)error;
- (void)saveWithTextContent:(id)content;
@end

@implementation QLTextDocument

- (NSString)textContent
{
  selfCopy = self;
  sub_23A7C6C4C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_23A7EE814();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSAttributedString)attributedTextContent
{
  selfCopy = self;
  v3 = sub_23A7C6DC0();

  return v3;
}

- (void)saveWithTextContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_23A7C6E8C(contentCopy);
}

- (id)contentsForType:(id)type error:(id *)error
{
  sub_23A7EE844();
  selfCopy = self;
  sub_23A7C6FFC(v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_23A7EEDF4();
  __swift_destroy_boxed_opaque_existential_0(v8);

  return v6;
}

- (BOOL)loadFromContents:(id)contents ofType:(id)type error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  typeCopy = type;
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  if (typeCopy)
  {
    v9 = sub_23A7EE844();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_23A7C7860(v13, v9, v11);
  __swift_destroy_boxed_opaque_existential_0(v13);

  return 1;
}

- (_TtC9QuickLook14QLTextDocument)initWithFileURL:(id)l
{
  v4 = sub_23A7EDF64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDF44();
  v9 = self + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = -1;
  v10 = sub_23A7EDF24();
  v11 = type metadata accessor for QLTextDocument();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(UIDocument *)&v14 initWithFileURL:v10];

  (*(v5 + 8))(v8, v4);
  return v12;
}

@end