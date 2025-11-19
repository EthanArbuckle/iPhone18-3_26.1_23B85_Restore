@interface PHCarPlayNumberPad
- (PHCarPlayNumberPad)initWithUserInterfaceStyle:(int64_t)a3;
- (id)_linearFocusMovementSequences;
@end

@implementation PHCarPlayNumberPad

- (PHCarPlayNumberPad)initWithUserInterfaceStyle:(int64_t)a3
{
  v4 = +[TPDialerNumberPad dialerNumberPadFullCharacters];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C5BD8;
  v9[3] = &unk_100358E00;
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v5 = v10;
  [v4 enumerateObjectsUsingBlock:v9];
  v8.receiver = self;
  v8.super_class = PHCarPlayNumberPad;
  v6 = [(PHCarPlayNumberPad *)&v8 initWithButtons:v5];

  return v6;
}

- (id)_linearFocusMovementSequences
{
  v2 = [(PHCarPlayNumberPad *)self buttons];
  v3 = [_UIFocusLinearMovementSequence sequenceWithItems:v2 loops:0];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

@end