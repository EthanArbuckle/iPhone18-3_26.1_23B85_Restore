@interface PHCarPlayNumberPad
- (PHCarPlayNumberPad)initWithUserInterfaceStyle:(int64_t)style;
- (id)_linearFocusMovementSequences;
@end

@implementation PHCarPlayNumberPad

- (PHCarPlayNumberPad)initWithUserInterfaceStyle:(int64_t)style
{
  v4 = +[TPDialerNumberPad dialerNumberPadFullCharacters];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __49__PHCarPlayNumberPad_initWithUserInterfaceStyle___block_invoke;
  v9[3] = &unk_100286948;
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v5 = v10;
  [v4 enumerateObjectsUsingBlock:v9];
  v8.receiver = self;
  v8.super_class = PHCarPlayNumberPad;
  v6 = [(PHCarPlayNumberPad *)&v8 initWithButtons:v5];

  return v6;
}

void __49__PHCarPlayNumberPad_initWithUserInterfaceStyle___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[PHCarPlayNumberPadButton alloc] initWithCharacter:v5];

  [*(a1 + 32) insertObject:v6 atIndex:a3];
}

- (id)_linearFocusMovementSequences
{
  buttons = [(PHCarPlayNumberPad *)self buttons];
  v3 = [_UIFocusLinearMovementSequence sequenceWithItems:buttons loops:0];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

@end