@interface NSObserverKeyPath
- (void)_receiveBox:(id)box;
- (void)setObservation:(id)observation;
@end

@implementation NSObserverKeyPath

- (void)_receiveBox:(id)box
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(box + 6) == 1)
  {
    if ([box _isToManyChangeInformation])
    {
      _toManyPropertyType = [*(box + 1) _toManyPropertyType];
      switch(_toManyPropertyType)
      {
        case 2:
          [*(box + 1) applyChangesToOrderedSet:{-[NSBoundKeyPath mutableOrderedSetValue](self, "mutableOrderedSetValue")}];
          break;
        case 1:
          [*(box + 1) applyChangesToArray:{-[NSBoundKeyPath mutableArrayValue](self, "mutableArrayValue")}];
          break;
        case 0:
          [*(box + 1) applyChangesToSet:{-[NSBoundKeyPath mutableSetValue](self, "mutableSetValue")}];
          break;
      }
    }

    else
    {
      [(NSBoundKeyPath *)self setValue:*(box + 1)];
    }
  }

  v6.receiver = self;
  v6.super_class = NSObserverKeyPath;
  [(NSObserverKeyPath *)&v6 _receiveBox:box];
}

- (void)setObservation:(id)observation
{
  rootObject = [(NSBoundKeyPath *)self rootObject];

  [rootObject setObservation:observation forObservingKeyPath:self];
}

@end