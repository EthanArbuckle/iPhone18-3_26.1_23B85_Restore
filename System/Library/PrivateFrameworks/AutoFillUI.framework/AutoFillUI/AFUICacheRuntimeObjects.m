@interface AFUICacheRuntimeObjects
@end

@implementation AFUICacheRuntimeObjects

uint64_t ___AFUICacheRuntimeObjects_block_invoke()
{
  __AFUIColorClass = NSClassFromString(&cfstr_Uicolor.isa);
  __AFUIFontClass = NSClassFromString(&cfstr_Uifont.isa);
  __AFUIResponderClass = NSClassFromString(&cfstr_Uiresponder.isa);
  __AFUIViewClass = NSClassFromString(&cfstr_Uiview.isa);
  __AFUIViewControllerClass = NSClassFromString(&cfstr_Uiviewcontroll.isa);
  __AFUINavigationControllerClass = NSClassFromString(&cfstr_Uinavigationco.isa);
  __AFUIApplicationClass = NSClassFromString(&cfstr_Uiapplication.isa);
  __AFUITextFieldClass = NSClassFromString(&cfstr_Uitextfield.isa);
  __AFUISecureTextFieldClass = NSClassFromString(&cfstr_Afuifakesecure.isa);
  __AFUITextViewClass = NSClassFromString(&cfstr_Uitextview.isa);
  __AFUIButtonClass = NSClassFromString(&cfstr_Uibutton.isa);
  __AFUITraitsClass = NSClassFromString(&cfstr_Uitextinputtra.isa);
  v0 = NSProtocolFromString(&cfstr_Uitextinputtra.isa);
  v1 = __AFUITraitsProtocol;
  __AFUITraitsProtocol = v0;

  __AFUITextInputProtocol = NSProtocolFromString(&cfstr_Uitextinput.isa);

  return MEMORY[0x1EEE66BB8]();
}

@end