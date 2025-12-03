@interface AXKeyboardShortcutEntryViewController
- (AXKeyboardShortcutEntryPresenter)presenter;
- (PSSpecifier)specifier;
- (void)_updateAttributedMessage;
- (void)_updateInstructionsText;
- (void)setHasEndedEventCapture:(BOOL)capture;
- (void)updateWithKeyChord:(id)chord shouldSpeakChange:(BOOL)change;
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

- (void)setHasEndedEventCapture:(BOOL)capture
{
  if (self->_hasEndedEventCapture != capture)
  {
    self->_hasEndedEventCapture = capture;
    [(AXKeyboardShortcutEntryViewController *)self _updateInstructionsText];
  }
}

- (void)updateWithKeyChord:(id)chord shouldSpeakChange:(BOOL)change
{
  changeCopy = change;
  chordCopy = chord;
  if ([(AXKeyboardShortcutEntryViewController *)self shouldAllowTabAsModifier])
  {
    [chordCopy accessibilitySpeakableDisplayValueWithStyle:1];
  }

  else
  {
    [chordCopy accessibilitySpeakableDisplayValue];
  }
  v7 = ;

  [(AXKeyboardShortcutEntryViewController *)self setKeyChordDisplayText:v7];
  if (changeCopy)
  {
    keyChordDisplayText = [(AXKeyboardShortcutEntryViewController *)self keyChordDisplayText];
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
  instructionsText = [(AXKeyboardShortcutEntryViewController *)self instructionsText];
  v5 = [instructionsText length];

  if (v5)
  {
    v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
    v7 = [NSAttributedString alloc];
    instructionsText2 = [(AXKeyboardShortcutEntryViewController *)self instructionsText];
    v24 = NSFontAttributeName;
    v9 = [UIFont fontWithDescriptor:v6 size:0.0];
    v25 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = [v7 initWithString:instructionsText2 attributes:v10];
    [v3 appendAttributedString:v11];
  }

  keyChordDisplayText = [(AXKeyboardShortcutEntryViewController *)self keyChordDisplayText];
  v13 = [keyChordDisplayText length];

  if (v13)
  {
    instructionsText3 = [(AXKeyboardShortcutEntryViewController *)self instructionsText];
    v15 = [instructionsText3 length];

    if (v15)
    {
      v16 = [[NSAttributedString alloc] initWithString:@"\n\n"];
      [v3 appendAttributedString:v16];
    }

    v17 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle2 variant:1024];
    v18 = [NSAttributedString alloc];
    keyChordDisplayText2 = [(AXKeyboardShortcutEntryViewController *)self keyChordDisplayText];
    v22 = NSFontAttributeName;
    v23 = v17;
    v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = [v18 initWithString:keyChordDisplayText2 attributes:v20];
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