@interface AXEventHandInfoRepresentation
- (AXEventHandInfoRepresentation)initWithCoder:(id)a3;
- (BOOL)isStylus;
- (CGPoint)handPosition;
- (NSArray)paths;
- (NSArray)pathsIncludingMayBeginEvents;
- (NSString)description;
- (id)accessibilityEventRepresentationTabularDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXEventHandInfoRepresentation

- (id)copyWithZone:(_NSZone *)a3
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

- (AXEventHandInfoRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AXEventHandInfoRepresentation;
  v5 = [(AXEventHandInfoRepresentation *)&v18 init];
  if (v5)
  {
    v5->_eventType = [v4 decodeInt32ForKey:@"eventType"];
    v5->_initialFingerCount = [v4 decodeInt32ForKey:@"initialFingerCount"];
    v5->_currentFingerCount = [v4 decodeInt32ForKey:@"currentFingerCount"];
    v5->_lifetimeFingerCount = [v4 decodeInt32ForKey:@"lifetimeFingerCount"];
    v5->_swipe = [v4 decodeInt32ForKey:@"swipe"];
    v5->_systemGesturePossible = [v4 decodeInt32ForKey:@"systemGesturePossible"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"paths"];
    paths = v5->_paths;
    v5->_paths = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"pathsIncludingMayBeginEvents"];
    pathsIncludingMayBeginEvents = v5->_pathsIncludingMayBeginEvents;
    v5->_pathsIncludingMayBeginEvents = v14;

    v5->_handIdentity = [v4 decodeInt32ForKey:@"handIdentity"];
    v5->_handIndex = [v4 decodeInt32ForKey:@"handIndex"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handPosition"];
    [v16 getValue:&v5->_handPosition size:16];

    v5->_handEventMask = [v4 decodeInt32ForKey:@"handEventMask"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInt32:self->_eventType forKey:@"eventType"];
  [v7 encodeInt32:self->_initialFingerCount forKey:@"initialFingerCount"];
  [v7 encodeInt32:self->_currentFingerCount forKey:@"currentFingerCount"];
  [v7 encodeInt32:self->_lifetimeFingerCount forKey:@"lifetimeFingerCount"];
  [v7 encodeInt32:self->_swipe forKey:@"swipe"];
  [v7 encodeInt32:self->_systemGesturePossible forKey:@"systemGesturePossible"];
  if ([(AXEventHandInfoRepresentation *)self encodePathsForCompatibility])
  {
    v4 = [(AXEventHandInfoRepresentation *)self paths];
  }

  else
  {
    v4 = self->_paths;
  }

  v5 = v4;
  [v7 encodeObject:v4 forKey:@"paths"];
  [v7 encodeObject:self->_pathsIncludingMayBeginEvents forKey:@"pathsIncludingMayBeginEvents"];
  [v7 encodeInt32:self->_handIdentity forKey:@"handIdentity"];
  v6 = [MEMORY[0x1E696B098] valueWithBytes:&self->_handPosition objCType:"{CGPoint=dd}"];
  [v7 encodeObject:v6 forKey:@"handPosition"];

  [v7 encodeInt32:self->_handIndex forKey:@"handIndex"];
  [v7 encodeInt32:self->_handEventMask forKey:@"handEventMask"];
}

- (id)accessibilityEventRepresentationTabularDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = AXDebugDescriptionForAXHandEventType([(AXEventHandInfoRepresentation *)self eventType]);
  v5 = [v3 stringWithFormat:@"  Hand Info\n    Type:                    %@\n    Initial Finger Count:    %i\n    Current Finger Count:    %i\n    Lifetime Finger Count:    %i\n    Swipe:                   %i\n    System Gesture Possible: %i\n", v4, -[AXEventHandInfoRepresentation initialFingerCount](self, "initialFingerCount"), -[AXEventHandInfoRepresentation currentFingerCount](self, "currentFingerCount"), -[AXEventHandInfoRepresentation lifetimeFingerCount](self, "lifetimeFingerCount"), -[AXEventHandInfoRepresentation swipe](self, "swipe"), -[AXEventHandInfoRepresentation systemGesturePossible](self, "systemGesturePossible")];

  v6 = [(AXEventHandInfoRepresentation *)self paths];
  v7 = [v6 count];

  if (v7)
  {
    [v5 appendString:@"    Hand Paths:\n"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(AXEventHandInfoRepresentation *)self paths];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) accessibilityEventRepresentationTabularDescription];
          [v5 appendFormat:@"%@", v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (BOOL)isStylus
{
  v3 = [(AXEventHandInfoRepresentation *)self paths];
  v4 = [v3 firstObject];
  if (v4)
  {
    v5 = [(AXEventHandInfoRepresentation *)self paths];
    v6 = [v5 firstObject];
    v7 = [v6 transducerType] == 0;
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
  v5 = [(AXEventHandInfoRepresentation *)self initialFingerCount];
  v6 = [(AXEventHandInfoRepresentation *)self currentFingerCount];
  v7 = [(AXEventHandInfoRepresentation *)self lifetimeFingerCount];
  v8 = [(AXEventHandInfoRepresentation *)self swipe];
  v9 = [(AXEventHandInfoRepresentation *)self systemGesturePossible];
  v10 = [(AXEventHandInfoRepresentation *)self isStylus];
  v11 = [(AXEventHandInfoRepresentation *)self paths];
  v12 = [v3 stringByAppendingFormat:@" - eventType %@, initialFingerCount %i, currentFingerCount %i, lifetimeFingerCount %i, swipe %i, systemGesturePossible %i, isStylus %i, \n\t\tpaths %@", v4, v5, v6, v7, v8, v9, v10, v11];

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