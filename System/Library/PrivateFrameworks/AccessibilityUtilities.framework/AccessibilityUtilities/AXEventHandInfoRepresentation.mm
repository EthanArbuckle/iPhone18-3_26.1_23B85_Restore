@interface AXEventHandInfoRepresentation
- (AXEventHandInfoRepresentation)initWithCoder:(id)coder;
- (BOOL)isStylus;
- (CGPoint)handPosition;
- (NSArray)paths;
- (NSArray)pathsIncludingMayBeginEvents;
- (NSString)description;
- (id)accessibilityEventRepresentationTabularDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXEventHandInfoRepresentation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AXEventHandInfoRepresentation);
  [(AXEventHandInfoRepresentation *)v4 setEventType:[(AXEventHandInfoRepresentation *)self eventType]];
  [(AXEventHandInfoRepresentation *)v4 setInitialFingerCount:[(AXEventHandInfoRepresentation *)self initialFingerCount]];
  [(AXEventHandInfoRepresentation *)v4 setCurrentFingerCount:[(AXEventHandInfoRepresentation *)self currentFingerCount]];
  [(AXEventHandInfoRepresentation *)v4 setLifetimeFingerCount:[(AXEventHandInfoRepresentation *)self lifetimeFingerCount]];
  [(AXEventHandInfoRepresentation *)v4 setSwipe:[(AXEventHandInfoRepresentation *)self swipe]];
  [(AXEventHandInfoRepresentation *)v4 setSystemGesturePossible:[(AXEventHandInfoRepresentation *)self systemGesturePossible]];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_paths copyItems:1];
  [(AXEventHandInfoRepresentation *)v4 setPaths:v5];
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_pathsIncludingMayBeginEvents copyItems:1];
  [(AXEventHandInfoRepresentation *)v4 setPathsIncludingMayBeginEvents:v6];
  [(AXEventHandInfoRepresentation *)v4 setHandIdentity:[(AXEventHandInfoRepresentation *)self handIdentity]];
  [(AXEventHandInfoRepresentation *)self handPosition];
  [(AXEventHandInfoRepresentation *)v4 setHandPosition:?];
  [(AXEventHandInfoRepresentation *)v4 setHandIndex:[(AXEventHandInfoRepresentation *)self handIndex]];
  [(AXEventHandInfoRepresentation *)v4 setHandEventMask:[(AXEventHandInfoRepresentation *)self handEventMask]];

  return v4;
}

- (AXEventHandInfoRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = AXEventHandInfoRepresentation;
  v5 = [(AXEventHandInfoRepresentation *)&v18 init];
  if (v5)
  {
    v5->_eventType = [coderCopy decodeInt32ForKey:@"eventType"];
    v5->_initialFingerCount = [coderCopy decodeInt32ForKey:@"initialFingerCount"];
    v5->_currentFingerCount = [coderCopy decodeInt32ForKey:@"currentFingerCount"];
    v5->_lifetimeFingerCount = [coderCopy decodeInt32ForKey:@"lifetimeFingerCount"];
    v5->_swipe = [coderCopy decodeInt32ForKey:@"swipe"];
    v5->_systemGesturePossible = [coderCopy decodeInt32ForKey:@"systemGesturePossible"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"paths"];
    paths = v5->_paths;
    v5->_paths = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"pathsIncludingMayBeginEvents"];
    pathsIncludingMayBeginEvents = v5->_pathsIncludingMayBeginEvents;
    v5->_pathsIncludingMayBeginEvents = v14;

    v5->_handIdentity = [coderCopy decodeInt32ForKey:@"handIdentity"];
    v5->_handIndex = [coderCopy decodeInt32ForKey:@"handIndex"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handPosition"];
    [v16 getValue:&v5->_handPosition size:16];

    v5->_handEventMask = [coderCopy decodeInt32ForKey:@"handEventMask"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_eventType forKey:@"eventType"];
  [coderCopy encodeInt32:self->_initialFingerCount forKey:@"initialFingerCount"];
  [coderCopy encodeInt32:self->_currentFingerCount forKey:@"currentFingerCount"];
  [coderCopy encodeInt32:self->_lifetimeFingerCount forKey:@"lifetimeFingerCount"];
  [coderCopy encodeInt32:self->_swipe forKey:@"swipe"];
  [coderCopy encodeInt32:self->_systemGesturePossible forKey:@"systemGesturePossible"];
  if ([(AXEventHandInfoRepresentation *)self encodePathsForCompatibility])
  {
    paths = [(AXEventHandInfoRepresentation *)self paths];
  }

  else
  {
    paths = self->_paths;
  }

  v5 = paths;
  [coderCopy encodeObject:paths forKey:@"paths"];
  [coderCopy encodeObject:self->_pathsIncludingMayBeginEvents forKey:@"pathsIncludingMayBeginEvents"];
  [coderCopy encodeInt32:self->_handIdentity forKey:@"handIdentity"];
  v6 = [MEMORY[0x1E696B098] valueWithBytes:&self->_handPosition objCType:"{CGPoint=dd}"];
  [coderCopy encodeObject:v6 forKey:@"handPosition"];

  [coderCopy encodeInt32:self->_handIndex forKey:@"handIndex"];
  [coderCopy encodeInt32:self->_handEventMask forKey:@"handEventMask"];
}

- (id)accessibilityEventRepresentationTabularDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = AXDebugDescriptionForAXHandEventType([(AXEventHandInfoRepresentation *)self eventType]);
  v5 = [v3 stringWithFormat:@"  Hand Info\n    Type:                    %@\n    Initial Finger Count:    %i\n    Current Finger Count:    %i\n    Lifetime Finger Count:    %i\n    Swipe:                   %i\n    System Gesture Possible: %i\n", v4, -[AXEventHandInfoRepresentation initialFingerCount](self, "initialFingerCount"), -[AXEventHandInfoRepresentation currentFingerCount](self, "currentFingerCount"), -[AXEventHandInfoRepresentation lifetimeFingerCount](self, "lifetimeFingerCount"), -[AXEventHandInfoRepresentation swipe](self, "swipe"), -[AXEventHandInfoRepresentation systemGesturePossible](self, "systemGesturePossible")];

  paths = [(AXEventHandInfoRepresentation *)self paths];
  v7 = [paths count];

  if (v7)
  {
    [v5 appendString:@"    Hand Paths:\n"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    paths2 = [(AXEventHandInfoRepresentation *)self paths];
    v9 = [paths2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(paths2);
          }

          accessibilityEventRepresentationTabularDescription = [*(*(&v15 + 1) + 8 * i) accessibilityEventRepresentationTabularDescription];
          [v5 appendFormat:@"%@", accessibilityEventRepresentationTabularDescription];
        }

        v10 = [paths2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (BOOL)isStylus
{
  paths = [(AXEventHandInfoRepresentation *)self paths];
  firstObject = [paths firstObject];
  if (firstObject)
  {
    paths2 = [(AXEventHandInfoRepresentation *)self paths];
    firstObject2 = [paths2 firstObject];
    v7 = [firstObject2 transducerType] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v14.receiver = self;
  v14.super_class = AXEventHandInfoRepresentation;
  v3 = [(AXEventHandInfoRepresentation *)&v14 description];
  v4 = AXDebugDescriptionForAXHandEventType([(AXEventHandInfoRepresentation *)self eventType]);
  initialFingerCount = [(AXEventHandInfoRepresentation *)self initialFingerCount];
  currentFingerCount = [(AXEventHandInfoRepresentation *)self currentFingerCount];
  lifetimeFingerCount = [(AXEventHandInfoRepresentation *)self lifetimeFingerCount];
  swipe = [(AXEventHandInfoRepresentation *)self swipe];
  systemGesturePossible = [(AXEventHandInfoRepresentation *)self systemGesturePossible];
  isStylus = [(AXEventHandInfoRepresentation *)self isStylus];
  paths = [(AXEventHandInfoRepresentation *)self paths];
  v12 = [v3 stringByAppendingFormat:@" - eventType %@, initialFingerCount %i, currentFingerCount %i, lifetimeFingerCount %i, swipe %i, systemGesturePossible %i, isStylus %i, \n\t\tpaths %@", v4, initialFingerCount, currentFingerCount, lifetimeFingerCount, swipe, systemGesturePossible, isStylus, paths];

  return v12;
}

- (NSArray)pathsIncludingMayBeginEvents
{
  pathsIncludingMayBeginEvents = self->_pathsIncludingMayBeginEvents;
  if (!pathsIncludingMayBeginEvents)
  {
    pathsIncludingMayBeginEvents = self->_paths;
  }

  return pathsIncludingMayBeginEvents;
}

- (NSArray)paths
{
  if ([(NSArray *)self->_paths count]|| ![(NSArray *)self->_pathsIncludingMayBeginEvents count])
  {
    v3 = self->_paths;
  }

  else
  {
    v3 = [(NSArray *)self->_pathsIncludingMayBeginEvents ax_filteredArrayUsingBlock:&__block_literal_global_2];
  }

  return v3;
}

- (CGPoint)handPosition
{
  x = self->_handPosition.x;
  y = self->_handPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end