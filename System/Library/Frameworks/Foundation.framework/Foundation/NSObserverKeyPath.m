@interface NSObserverKeyPath
- (void)_receiveBox:(id)a3;
- (void)setObservation:(id)a3;
@end

@implementation NSObserverKeyPath

- (void)_receiveBox:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a3 + 6) == 1)
  {
    if ([a3 _isToManyChangeInformation])
    {
      v5 = [*(a3 + 1) _toManyPropertyType];
      switch(v5)
      {
        case 2:
          [*(a3 + 1) applyChangesToOrderedSet:{-[NSBoundKeyPath mutableOrderedSetValue](self, "mutableOrderedSetValue")}];
          break;
        case 1:
          [*(a3 + 1) applyChangesToArray:{-[NSBoundKeyPath mutableArrayValue](self, "mutableArrayValue")}];
          break;
        case 0:
          [*(a3 + 1) applyChangesToSet:{-[NSBoundKeyPath mutableSetValue](self, "mutableSetValue")}];
          break;
      }
    }

    else
    {
      [(NSBoundKeyPath *)self setValue:*(a3 + 1)];
    }
  }

  v6.receiver = self;
  v6.super_class = NSObserverKeyPath;
  [(NSObserverKeyPath *)&v6 _receiveBox:a3];
}

- (void)setObservation:(id)a3
{
  v5 = [(NSBoundKeyPath *)self rootObject];

  [v5 setObservation:a3 forObservingKeyPath:self];
}

@end