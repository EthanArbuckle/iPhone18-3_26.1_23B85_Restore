@interface SignatureItem
- (_TtC8PaperKit13SignatureItem)init;
- (id)axSignatureDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SignatureItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SignatureItem.encode(with:)(coderCopy);
}

- (id)axSignatureDescription
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription);
  countAndFlagsBits = *&self->_anon_0[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
  if ((countAndFlagsBits - 1) >= 5)
  {
    if (countAndFlagsBits)
    {
      object = countAndFlagsBits;

      countAndFlagsBits = v3;
    }

    else
    {
      object = 0xE000000000000000;
    }
  }

  else
  {
    v4 = SignatureDescription.localizedTitle()();
    countAndFlagsBits = v4._countAndFlagsBits;
    object = v4._object;
  }

  v6 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

  return v6;
}

- (_TtC8PaperKit13SignatureItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end