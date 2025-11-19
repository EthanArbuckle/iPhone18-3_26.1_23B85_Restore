@interface AXKeyboardShortcutEntryViewController
- (AXKeyboardShortcutEntryPresenter)presenter;
- (PSSpecifier)specifier;
- (void)_updateAttributedMessage;
- (void)_updateInstructionsText;
- (void)setHasEndedEventCapture:(BOOL)a3;
- (void)updateWithKeyChord:(id)a3 shouldSpeakChange:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation AXKeyboardShortcutEntryViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AXKeyboardShortcutEntryViewController;
  [(AXKeyboardShortcutEntryViewController *)&v4 viewDidLoad];
  [(AXKeyboardShortcutEntryViewController *)self _updateInstructionsText];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateAttributedMessage" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)setHasEndedEventCapture:(BOOL)a3
{
  if (self->_hasEndedEventCapture != a3)
  {
    self->_hasEndedEventCapture = a3;
    [(AXKeyboardShortcutEntryViewController *)self _updateInstructionsText];
  }
}

- (void)updateWithKeyChord:(id)a3 shouldSpeakChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(AXKeyboardShortcutEntryViewController *)self shouldAllowTabAsModifier])
  {
    [v6 accessibilitySpeakableDisplayValueWithStyle:1];
  }

  else
  {
    [v6 accessibilitySpeakableDisplayValue];
  }
  v7 = ;

  [(AXKeyboardShortcutEntryViewController *)self setKeyChordDisplayText:v7];
  if (v4)
  {
    v8 = [(AXKeyboardShortcutEntryViewController *)self keyChordDisplayText];
    UIAccessibilitySpeak();
  }

  [(AXKeyboardShortcutEntryViewController *)self _updateAttributedMessage];
}

- (void)_updateInstructionsText
{
  if ([(AXKeyboardShortcutEntryViewController *)self shouldAllowEndingEventCapture])
  {
    if ([(AXKeyboardShortcutEntryViewController *)self hasEndedEventCapture])
    {
      v3 = @"KEYBOARD_SHORTCUT_INSTRUCTIONS_TOGGLE_OFF";
    }

    else
    {
      v3 = @"KEYBOARD_SHORTCUT_INSTRUCTIONS_TOGGLE";
    }
  }

  else
  {
    v3 = @"KEYBOARD_SHORTCUT_INSTRUCTIONS";
  }

  v4 = settingsLocString(v3, @"Accessibility");
  [(AXKeyboardShortcutEntryViewController *)self setInstructionsText:v4];
  [(AXKeyboardShortcutEntryViewController *)self _updateAttributedMessage];
}

- (void)_updateAttributedMessage
{
  v3 = objc_opt_new();
  v4 = [(AXKeyboardShortcutEntryViewController *)self instructionsText];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
    v7 = [NSAttributedString alloc];
    v8 = [(AXKeyboardShortcutEntryViewController *)self instructionsText];
    v24 = NSFontAttributeName;
    v9 = [UIFont fontWithDescriptor:v6 size:0.0];
    v25 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = [v7 initWithString:v8 attributes:v10];
    [v3 appendAttributedString:v11];
  }

  v12 = [(AXKeyboardShortcutEntryViewController *)self keyChordDisplayText];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(AXKeyboardShortcutEntryViewController *)self instructionsText];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [[NSAttributedString alloc] initWithString:@"\n\n"];
      [v3 appendAttributedString:v16];
    }

    v17 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle2 variant:1024];
    v18 = [NSAttributedString alloc];
    v19 = [(AXKeyboardShortcutEntryViewController *)self keyChordDisplayText];
    v22 = NSFontAttributeName;
    v23 = v17;
    v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = [v18 initWithString:v19 attributes:v20];
    [v3 appendAttributedString:v21];
  }

  [(AXKeyboardShortcutEntryViewController *)self _setAttributedMessage:v3];
}

- (AXKeyboardShortcutEntryPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (PSSpecifier)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_specifier);

  return WeakRetained;
}

@end