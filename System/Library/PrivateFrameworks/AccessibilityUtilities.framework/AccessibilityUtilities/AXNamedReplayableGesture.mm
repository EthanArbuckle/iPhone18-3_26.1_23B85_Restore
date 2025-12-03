@interface AXNamedReplayableGesture
+ (id)gestureWithLegacyFormatDictionary:(id)dictionary;
+ (id)gestureWithPoints:(id)points times:(id)times forces:(id)forces;
- (AXNamedReplayableGesture)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)gestureShiftedByOffset:(CGPoint)offset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXNamedReplayableGesture

- (AXNamedReplayableGesture)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AXNamedReplayableGesture;
  v5 = [(AXReplayableGesture *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    v7 = *&v5->_hasLocalizableName;
    *&v5->_hasLocalizableName = v6;

    *(&v5->super.super._arePointsDeviceRelative + 1) = [coderCopy decodeBoolForKey:@"HasLocalizableName"];
    *(&v5->super.super._arePointsDeviceRelative + 2) = [coderCopy decodeBoolForKey:@"ShouldPerformAtOriginalLocation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AXNamedReplayableGesture;
  coderCopy = coder;
  [(AXReplayableGesture *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:*&self->_hasLocalizableName forKey:{@"Name", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:*(&self->super.super._arePointsDeviceRelative + 1) forKey:@"HasLocalizableName"];
  [coderCopy encodeBool:*(&self->super.super._arePointsDeviceRelative + 2) forKey:@"ShouldPerformAtOriginalLocation"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = *&self->_hasLocalizableName;
    if ((v6 == v5[3] || [v6 isEqualToString:?]) && *(&self->super.super._arePointsDeviceRelative + 1) == *(v5 + 17) && *(&self->super.super._arePointsDeviceRelative + 2) == *(v5 + 18))
    {
      v9.receiver = self;
      v9.super_class = AXNamedReplayableGesture;
      v7 = [(AXReplayableGesture *)&v9 isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)gestureShiftedByOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v37 = *MEMORY[0x1E69E9840];
  if ([(AXReplayableGesture *)self arePointsDeviceRelative])
  {
    _AXAssert();
  }

  v5 = objc_alloc_init(objc_opt_class());
  name = [(AXNamedReplayableGesture *)self name];
  [v5 setName:name];

  [v5 setHasLocalizableName:{-[AXNamedReplayableGesture hasLocalizableName](self, "hasLocalizableName")}];
  [v5 setShouldPerformAtOriginalLocation:{-[AXNamedReplayableGesture shouldPerformAtOriginalLocation](self, "shouldPerformAtOriginalLocation")}];
  v30 = [(NSArray *)self->super.super._allEvents count];
  if (v30)
  {
    for (i = 0; i != v30; ++i)
    {
      v8 = [(NSArray *)self->super.super._allEvents objectAtIndexedSubscript:i];
      v9 = [v8 objectForKeyedSubscript:@"Time"];
      [v9 doubleValue];
      v11 = v10;

      v12 = [(NSArray *)self->super.super._allEvents objectAtIndexedSubscript:i];
      v13 = [v12 objectForKeyedSubscript:@"Forces"];

      v14 = [(NSArray *)self->super.super._allEvents objectAtIndexedSubscript:i];
      v15 = [v14 objectForKeyedSubscript:@"Fingers"];
      v16 = [v15 mutableCopy];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      allKeys = [v16 allKeys];
      v18 = [allKeys countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v33;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(allKeys);
            }

            v22 = *(*(&v32 + 1) + 8 * j);
            v23 = [v16 objectForKeyedSubscript:v22];
            [v23 axCGPointValue];
            v25 = v24;
            v27 = v26;

            v28 = [MEMORY[0x1E696B098] axValueWithCGPoint:{x + v25, y + v27}];
            [v16 setObject:v28 forKeyedSubscript:v22];
          }

          v19 = [allKeys countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v19);
      }

      [v5 addPointsByFingerIdentifier:v16 forces:v13 atTime:v11];
    }
  }

  return v5;
}

+ (id)gestureWithLegacyFormatDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Points"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"Times"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"Forces"];
  v8 = [self gestureWithPoints:v5 times:v6 forces:v7];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"IsDoubleTap"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    if ([v8 numberOfEvents] != 2)
    {
      _AXAssert();
    }

    if ([v8 numberOfEvents] == 2)
    {
      [v8 _removeFingersAtEventIndex:1];
      [v8 timeAtEventIndex:0];
      v12 = v11;
      [v8 timeAtEventIndex:1];
      v14 = v13;
      v15 = v13 - v12;
      v16 = [v8 _pointsByFingerIdentifierAtEventIndex:0];
      v17 = [v8 _forcesByFingerIdentifierAtEventIndex:0];
      [v8 addPointsByFingerIdentifier:v16 forces:v17 atTime:v14 + 0.05];

      [v8 addPointsByFingerIdentifier:MEMORY[0x1E695E0F8] forces:MEMORY[0x1E695E0F8] atTime:v14 + 0.05 + v15];
    }
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"Name"];
  [v8 setName:v18];

  v19 = [dictionaryCopy objectForKeyedSubscript:@"HasLocalizableName"];
  [v8 setHasLocalizableName:{objc_msgSend(v19, "BOOLValue")}];

  v20 = [dictionaryCopy objectForKeyedSubscript:@"ShouldPerformAtOriginalLocation"];
  [v8 setShouldPerformAtOriginalLocation:{objc_msgSend(v20, "BOOLValue")}];

  return v8;
}

+ (id)gestureWithPoints:(id)points times:(id)times forces:(id)forces
{
  pointsCopy = points;
  timesCopy = times;
  forcesCopy = forces;
  selfCopy = self;
  v11 = objc_alloc_init(objc_opt_class());
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -1;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __59__AXNamedReplayableGesture_gestureWithPoints_times_forces___block_invoke;
  v37[3] = &unk_1E71EC6E8;
  v37[4] = &v42;
  v37[5] = &v38;
  [pointsCopy enumerateObjectsUsingBlock:v37];
  v12 = v39[3];
  if ((v12 & 0x8000000000000000) != 0 || v12 >= [timesCopy count])
  {
    v13 = 0;
  }

  else
  {
    v13 = [timesCopy objectAtIndexedSubscript:v39[3]];
  }

  v35 = timesCopy;
  v14 = [pointsCopy count];
  firstObject = [v13 firstObject];
  [firstObject doubleValue];
  v17 = v16;

  v18 = v43;
  if (v43[3] >= 1)
  {
    v19 = 0;
    do
    {
      if (v14 >= 1)
      {
        for (i = 0; i != v14; ++i)
        {
          v21 = [pointsCopy objectAtIndex:i];
          if (i >= [forcesCopy count])
          {
            v22 = 0;
          }

          else
          {
            v22 = [forcesCopy objectAtIndex:i];
          }

          if (v19 < [v21 count])
          {
            v23 = [v21 objectAtIndex:v19];
            v24 = AX_CGPointFromString(v23);
            v26 = v25;

            v27 = 0.0;
            v28 = 0.0;
            if (v19 < [v22 count])
            {
              v29 = [v22 objectAtIndexedSubscript:v19];
              [v29 doubleValue];
              v28 = v30;
            }

            if (v19)
            {
              if (v19 >= [v13 count])
              {
                [v13 lastObject];
              }

              else
              {
                [v13 objectAtIndex:v19];
              }
              v31 = ;
              [v31 doubleValue];
              v27 = v32 - v17;
            }

            if (v19 >= [v11 numberOfEvents])
            {
              v33 = [selfCopy _fingerIdentifierForFingerAtIndex:i];
              [v11 _addPoint:v33 force:v24 forFingerIdentifier:v26 atTime:{v28, v27}];
            }

            else
            {
              v33 = [selfCopy _fingerIdentifierForFingerAtIndex:i];
              [v11 _addPoint:v33 force:v19 forFingerIdentifier:v24 atEventIndex:{v26, v28}];
            }
          }
        }

        v18 = v43;
      }

      ++v19;
    }

    while (v19 < v18[3]);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v11;
}

unint64_t __59__AXNamedReplayableGesture_gestureWithPoints_times_forces___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 count];
  if (v5 <= result)
  {
    v7 = result;
  }

  else
  {
    v7 = v5;
  }

  if (v7 != *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 32) + 8) + 24) = v7;
  }

  return result;
}

@end