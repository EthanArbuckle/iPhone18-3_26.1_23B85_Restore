@interface AXBrailleTranslator
+ (id)sharedLock;
- (AXBrailleTranslator)initWithBrailleTable:(id)table;
- (id)backTranslateBraille:(id)braille;
- (id)translatePrintText:(id)text;
@end

@implementation AXBrailleTranslator

+ (id)sharedLock
{
  if (sharedLock_onceToken != -1)
  {
    +[AXBrailleTranslator sharedLock];
  }

  v3 = sharedLock__sharedLock;

  return v3;
}

uint64_t __33__AXBrailleTranslator_sharedLock__block_invoke()
{
  sharedLock__sharedLock = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (AXBrailleTranslator)initWithBrailleTable:(id)table
{
  tableCopy = table;
  v11.receiver = self;
  v11.super_class = AXBrailleTranslator;
  v5 = [(AXBrailleTranslator *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(getBRLTServiceTranslatorClass());
    brltTable = [tableCopy brltTable];
    v8 = [v6 initWithTable:brltTable];
    translator = v5->_translator;
    v5->_translator = v8;
  }

  return v5;
}

- (id)translatePrintText:(id)text
{
  textCopy = text;
  v5 = +[AXBrailleTranslator sharedLock];
  [v5 lock];

  translator = [(AXBrailleTranslator *)self translator];
  v12 = 0;
  v7 = [translator brailleForText:textCopy locations:&v12];
  v8 = v12;

  v9 = +[AXBrailleTranslator sharedLock];
  [v9 unlock];

  v10 = [[AXBrailleTranslationResult alloc] initWithInputString:textCopy ResultString:v7 locationMap:v8];

  return v10;
}

- (id)backTranslateBraille:(id)braille
{
  brailleCopy = braille;
  v5 = +[AXBrailleTranslator sharedLock];
  [v5 lock];

  translator = [(AXBrailleTranslator *)self translator];
  v12 = 0;
  v7 = [translator textForBraille:brailleCopy locations:&v12];
  v8 = v12;

  v9 = +[AXBrailleTranslator sharedLock];
  [v9 unlock];

  v10 = [[AXBrailleTranslationResult alloc] initWithInputString:brailleCopy ResultString:v7 locationMap:v8];

  return v10;
}

@end