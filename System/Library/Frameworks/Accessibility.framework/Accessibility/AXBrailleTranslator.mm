@interface AXBrailleTranslator
+ (id)sharedLock;
- (AXBrailleTranslator)initWithBrailleTable:(id)a3;
- (id)backTranslateBraille:(id)a3;
- (id)translatePrintText:(id)a3;
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

- (AXBrailleTranslator)initWithBrailleTable:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AXBrailleTranslator;
  v5 = [(AXBrailleTranslator *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(getBRLTServiceTranslatorClass());
    v7 = [v4 brltTable];
    v8 = [v6 initWithTable:v7];
    translator = v5->_translator;
    v5->_translator = v8;
  }

  return v5;
}

- (id)translatePrintText:(id)a3
{
  v4 = a3;
  v5 = +[AXBrailleTranslator sharedLock];
  [v5 lock];

  v6 = [(AXBrailleTranslator *)self translator];
  v12 = 0;
  v7 = [v6 brailleForText:v4 locations:&v12];
  v8 = v12;

  v9 = +[AXBrailleTranslator sharedLock];
  [v9 unlock];

  v10 = [[AXBrailleTranslationResult alloc] initWithInputString:v4 ResultString:v7 locationMap:v8];

  return v10;
}

- (id)backTranslateBraille:(id)a3
{
  v4 = a3;
  v5 = +[AXBrailleTranslator sharedLock];
  [v5 lock];

  v6 = [(AXBrailleTranslator *)self translator];
  v12 = 0;
  v7 = [v6 textForBraille:v4 locations:&v12];
  v8 = v12;

  v9 = +[AXBrailleTranslator sharedLock];
  [v9 unlock];

  v10 = [[AXBrailleTranslationResult alloc] initWithInputString:v4 ResultString:v7 locationMap:v8];

  return v10;
}

@end