@interface XPCSandboxExtensionContainer
- (_TtC9EnergyKit28XPCSandboxExtensionContainer)init;
- (_TtC9EnergyKit28XPCSandboxExtensionContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCSandboxExtensionContainer

- (_TtC9EnergyKit28XPCSandboxExtensionContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_238269650(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s9EnergyKit28XPCSandboxExtensionContainerC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC9EnergyKit28XPCSandboxExtensionContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end