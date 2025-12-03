@interface AXEventRepresentation
+ (AXEventRepresentation)representationWithData:(id)data;
+ (AXEventRepresentation)representationWithHIDEvent:(__IOHIDEvent *)event serviceClient:(__IOHIDServiceClient *)client hidStreamIdentifier:(id)identifier clientID:(id)d taskPort:(unsigned int)port;
+ (AXEventRepresentation)representationWithLocation:(CGPoint)location windowLocation:(CGPoint)windowLocation handInfo:(id)info;
+ (AXEventRepresentation)representationWithType:(unsigned int)type subtype:(int)subtype time:(unint64_t)time location:(CGPoint)location windowLocation:(CGPoint)windowLocation handInfo:(id)info;
+ (BOOL)_HIDEventIsAccessibilityEvent:(__IOHIDEvent *)event;
+ (id)_digitizerRepresentation:(__IOHIDEvent *)representation hidStreamIdentifier:(id)identifier;
+ (id)_gameControllerEvent:(__IOHIDEvent *)event;
+ (id)_keyboardButtonEvent:(__IOHIDEvent *)event;
+ (id)_pointerControllerEvent:(__IOHIDEvent *)event hidStreamIdentifier:(id)identifier serviceClient:(__IOHIDServiceClient *)client;
+ (id)_vendorDefinedAccessibilityEvent:(__IOHIDEvent *)event;
+ (id)_wheelEvent:(__IOHIDEvent *)event;
+ (id)accelerometerRepresentation:(id)representation;
+ (id)accessibilityEventRepresentationWithSender:(int64_t)sender usagePage:(int64_t)page usage:(int64_t)usage modifierFlags:(int64_t)flags eventValue1:(float)value1 eventValue2:(float)value2;
+ (id)buttonRepresentationWithType:(unsigned int)type;
+ (id)cancelEventForPathIndexMask:(unsigned int)mask;
+ (id)gestureRepresentationWithHandType:(unsigned int)type locations:(id)locations;
+ (id)iosmacPointerRepresentationWithTypeWithPointerInfo:(id)info;
+ (id)keyRepresentationWithType:(unsigned int)type;
+ (id)touchRepresentationWithHandType:(unsigned int)type location:(CGPoint)location;
+ (void)_appendKeyInfoToMediaKey:(id)key usage:(int64_t)usage downEvent:(BOOL)event;
+ (void)incrementTouchCounter;
- (AXEventRepresentation)initWithCoder:(id)coder;
- (BOOL)_HIDEventIsAccessibilityEvent:(__IOHIDEvent *)event;
- (BOOL)isCancel;
- (BOOL)isChordChange;
- (BOOL)isDownEvent;
- (BOOL)isInRange;
- (BOOL)isInRangeLift;
- (BOOL)isLift;
- (BOOL)isMove;
- (BOOL)isTouchDown;
- (BOOL)isUpdate;
- (BOOL)willBeUpdated;
- (CGPoint)location;
- (CGPoint)windowLocation;
- (NSString)description;
- (__IOHIDEvent)_accessibilityEventFromRealEvent:(__IOHIDEvent *)event;
- (__IOHIDEvent)_newAccelerometerHIDEventRef;
- (__IOHIDEvent)_newAccessibilityHIDEventRef;
- (__IOHIDEvent)_newButtonHIDEventRefWithType:(unsigned int)type;
- (__IOHIDEvent)_newHandHIDEventRef;
- (__IOHIDEvent)_newIOSMACPointerRef;
- (__IOHIDEvent)_newKeyboardHIDEventRef;
- (__IOHIDEvent)_newScrollHIDEventRef;
- (__IOHIDEvent)_newTostadaButtonHIDEventRefWithType:(unsigned int)type;
- (__IOHIDEvent)newHIDEventRef;
- (id)_accessibilityDataFromRealEvent:(__IOHIDEvent *)event;
- (id)_senderNameForID;
- (id)accessibilityEventRepresentationTabularDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (id)denormalizedEventRepresentation:(BOOL)representation descale:(BOOL)descale;
- (id)fakeTouchScaleEventRepresentation:(BOOL)representation;
- (id)normalizedEventRepresentation:(BOOL)representation scale:(BOOL)scale;
- (unint64_t)_machTimeForHIDEventRef;
- (unint64_t)fingerCount;
- (unsigned)firstPathContextId;
- (unsigned)originalType;
- (unsigned)pathIndexMask;
- (unsigned)screenEdgeForPoint:(CGPoint)point;
- (void)_applyAccessibilityDataToRealEvent:(__IOHIDEvent *)event;
- (void)applyAccessibilityDataToCreatorHIDEvent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)modifyPoints:(id)points;
- (void)neuterUpdates;
@end

@implementation AXEventRepresentation

+ (AXEventRepresentation)representationWithData:(id)data
{
  v3 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v5 = [v3 secureUnarchiveData:dataCopy withExpectedClass:objc_opt_class() otherAllowedClasses:0];

  return v5;
}

+ (AXEventRepresentation)representationWithType:(unsigned int)type subtype:(int)subtype time:(unint64_t)time location:(CGPoint)location windowLocation:(CGPoint)windowLocation handInfo:(id)info
{
  y = windowLocation.y;
  x = windowLocation.x;
  v10 = location.y;
  v11 = location.x;
  v13 = *&subtype;
  v14 = *&type;
  infoCopy = info;
  v16 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v16 setType:v14];
  [(AXEventRepresentation *)v16 setSubtype:v13];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v16 setTime:(*&_AXGSEventConvertFromMachTime___scale * time)];
  [(AXEventRepresentation *)v16 setLocation:v11, v10];
  [(AXEventRepresentation *)v16 setWindowLocation:x, y];
  [(AXEventRepresentation *)v16 setHandInfo:infoCopy];

  [(AXEventRepresentation *)v16 setIsGeneratedEvent:1];

  return v16;
}

- (unsigned)pathIndexMask
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(AXEventRepresentation *)self type]!= 3001 || ([(AXEventRepresentation *)self handInfo], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    _AXAssert();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  handInfo = [(AXEventRepresentation *)self handInfo];
  paths = [handInfo paths];

  v6 = [paths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(paths);
        }

        v8 |= 1 << [*(*(&v12 + 1) + 8 * i) pathIndex];
      }

      v7 = [paths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)cancelEventForPathIndexMask:(unsigned int)mask
{
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:3001];
  v5 = objc_alloc_init(AXEventHandInfoRepresentation);
  [(AXEventRepresentation *)v4 setHandInfo:v5];

  handInfo = [(AXEventRepresentation *)v4 handInfo];
  [handInfo setHandEventMask:128];

  handInfo2 = [(AXEventRepresentation *)v4 handInfo];
  [handInfo2 setEventType:8];

  [(AXEventRepresentation *)v4 setIsDisplayIntegrated:1];
  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 32; ++i)
  {
    if ((mask >> i))
    {
      v10 = objc_alloc_init(AXEventPathInfoRepresentation);
      [(AXEventPathInfoRepresentation *)v10 setPathIndex:i];
      [(AXEventPathInfoRepresentation *)v10 setPathEventMask:128];
      [array addObject:v10];
    }
  }

  handInfo3 = [(AXEventRepresentation *)v4 handInfo];
  [handInfo3 setPaths:array];

  return v4;
}

+ (id)_digitizerRepresentation:(__IOHIDEvent *)representation hidStreamIdentifier:(id)identifier
{
  v129 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v5 setSenderID:IOHIDEventGetSenderID()];
  IntegerValue = IOHIDEventGetIntegerValue();
  v7 = IOHIDEventGetIntegerValue();
  v8 = IOHIDEventGetIntegerValue();
  if (IOHIDEventGetIntegerValue())
  {
    v9 = IOHIDEventGetIntegerValue();
    Children = IOHIDEventGetChildren();
    v11 = (Children | v9) != 0;
    if (Children && !v9)
    {
      v12 = Children;
      do
      {
        Count = CFArrayGetCount(v12);
        v11 = v9 < Count;
        if (v9 >= Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(v12, v9++);
      }

      while (!IOHIDEventGetIntegerValue());
    }
  }

  else
  {
    v11 = 0;
  }

  if (IOHIDEventGetPhase() == 1)
  {
    [HIDStreamLock lock];
    [HIDStreamIdentifierPhasesForTouches removeAllObjects];
    [HIDStreamLock unlock];
  }

  v14 = IOHIDEventGetChildren();
  v15 = v14;
  if (v14)
  {
    v119 = CFArrayGetCount(v14);
  }

  else
  {
    v119 = 0;
  }

  v16 = objc_alloc_init(AXEventHandInfoRepresentation);
  [(AXEventRepresentation *)v5 setHandInfo:v16];

  handInfo = [(AXEventRepresentation *)v5 handInfo];
  [handInfo setSystemGesturePossible:1];

  handInfo2 = [(AXEventRepresentation *)v5 handInfo];
  [handInfo2 setHandIdentity:v7];

  handInfo3 = [(AXEventRepresentation *)v5 handInfo];
  [handInfo3 setHandIndex:v8];

  handInfo4 = [(AXEventRepresentation *)v5 handInfo];
  [handInfo4 setHandEventMask:IntegerValue];

  IOHIDEventGetFloatValue();
  v22 = v21;
  IOHIDEventGetFloatValue();
  v24 = v23;
  handInfo5 = [(AXEventRepresentation *)v5 handInfo];
  [handInfo5 setHandPosition:{v22, v24}];

  v26 = &unk_1EA9B7000;
  if (IOHIDEventGetAttributeDataLength() >= 1)
  {
    v27 = BKSHIDEventGetDigitizerAttributes();
    v28 = v27;
    if (v27)
    {
      systemGesturesPossible = [v27 systemGesturesPossible];
      handInfo6 = [(AXEventRepresentation *)v5 handInfo];
      [handInfo6 setSystemGesturePossible:systemGesturesPossible];

      v26 = &unk_1EA9B7000;
      [(AXEventRepresentation *)v5 setContextId:_ContextIDFromEvent(representation)];
    }
  }

  v111 = v11;
  representationCopy = representation;
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:v119];
  v115 = v5;
  v117 = v31;
  v110 = IntegerValue;
  if (v119 < 1)
  {
    v34 = 0;
    v113 = 0;
    v33 = 0;
    v118 = 0;
  }

  else
  {
    v32 = 0;
    v118 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v113 = 0;
    v114 = v15;
    do
    {
      CFArrayGetValueAtIndex(v15, v32);
      if (IOHIDEventGetType() == 11 || IOHIDEventGetType() == 32)
      {
        v36 = objc_alloc_init(AXEventPathInfoRepresentation);
        IOHIDEventGetFloatValue();
        v38 = v37;
        IOHIDEventGetFloatValue();
        [(AXEventPathInfoRepresentation *)v36 setPathLocation:v38, v39];
        IOHIDEventGetFloatValue();
        [(AXEventPathInfoRepresentation *)v36 setPathZValue:?];
        [v31 addObject:v36];
        [(AXEventPathInfoRepresentation *)v36 setPathIndex:IOHIDEventGetIntegerValue()];
        if (IOHIDEventGetIntegerValue())
        {
          [(AXEventPathInfoRepresentation *)v36 setPathProximity:[(AXEventPathInfoRepresentation *)v36 pathProximity]| 1];
          v113 = 1;
        }

        v40 = IOHIDEventGetIntegerValue();
        v122 = v33;
        if (v40)
        {
          [(AXEventPathInfoRepresentation *)v36 setPathProximity:[(AXEventPathInfoRepresentation *)v36 pathProximity]| 2];
          ++v34;
        }

        v41 = v40 != 0;
        v42 = IOHIDEventGetIntegerValue();
        if (v34)
        {
          v118 |= (v42 & 0x41C04) != 0;
        }

        v120 = v42;
        v121 = v34;
        if ((v42 & 0x80) != 0)
        {
          Phase = 8;
        }

        else
        {
          Phase = IOHIDEventGetPhase();
        }

        pathIndex = [(AXEventPathInfoRepresentation *)v36 pathIndex];
        v45 = identifierCopy;
        if (_initializeHIDStreamCountsIfNeeded_onceToken != -1)
        {
          +[AXEventRepresentation _digitizerRepresentation:hidStreamIdentifier:];
        }

        [v26[369] lock];
        v46 = [HIDStreamIdentifierPhasesForTouches objectForKey:v45];
        v47 = [v46 mutableCopy];
        v48 = v47;
        if (v47)
        {
          dictionary = v47;
        }

        else
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        v50 = dictionary;
        v33 = v122 | v41;

        v51 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:Phase];
        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:pathIndex];
        [v50 setObject:v51 forKey:v52];

        [HIDStreamIdentifierPhasesForTouches setObject:v50 forKey:v45];
        v26 = &unk_1EA9B7000;
        [HIDStreamLock unlock];

        IOHIDEventGetFloatValue();
        [(AXEventPathInfoRepresentation *)v36 setPathIdentity:v53];
        IOHIDEventGetFloatValue();
        *&v54 = v54;
        [(AXEventPathInfoRepresentation *)v36 setPathPressure:v54];
        IOHIDEventGetFloatValue();
        *&v55 = v55;
        [(AXEventPathInfoRepresentation *)v36 setPathMajorRadius:v55];
        IOHIDEventGetFloatValue();
        *&v56 = v56;
        [(AXEventPathInfoRepresentation *)v36 setPathMinorRadius:v56];
        IOHIDEventGetFloatValue();
        *&v57 = v57;
        [(AXEventPathInfoRepresentation *)v36 setPathMajorRadiusTolerance:v57];
        IOHIDEventGetFloatValue();
        *&v58 = v58;
        [(AXEventPathInfoRepresentation *)v36 setPathTwist:v58];
        IOHIDEventGetFloatValue();
        *&v59 = v59;
        [(AXEventPathInfoRepresentation *)v36 setPathQuality:v59];
        IOHIDEventGetFloatValue();
        *&v60 = v60;
        [(AXEventPathInfoRepresentation *)v36 setPathDensity:v60];
        [(AXEventPathInfoRepresentation *)v36 setPathEventMask:v120];
        v5 = v115;
        [(AXEventPathInfoRepresentation *)v36 setPathWindowContextID:[(AXEventRepresentation *)v115 contextId]];
        IOHIDEventGetFloatValue();
        *&v61 = v61;
        [(AXEventPathInfoRepresentation *)v36 setOrbValue:v61];
        [(AXEventPathInfoRepresentation *)v36 setTransducerType:IOHIDEventGetIntegerValue()];
        IOHIDEventGetFloatValue();
        *&v62 = v62;
        [(AXEventPathInfoRepresentation *)v36 setAltitude:v62];
        IOHIDEventGetFloatValue();
        *&v63 = v63;
        [(AXEventPathInfoRepresentation *)v36 setAzimuth:v63];
        IOHIDEventGetFloatValue();
        *&v64 = v64;
        [(AXEventPathInfoRepresentation *)v36 setBarrelPressure:v64];
        IOHIDEventGetFloatValue();
        *&v65 = v65;
        [(AXEventPathInfoRepresentation *)v36 setRoll:v65];
        [(AXEventPathInfoRepresentation *)v36 setWillUpdateMask:IOHIDEventGetIntegerValue()];
        [(AXEventPathInfoRepresentation *)v36 setDidUpdateMask:IOHIDEventGetIntegerValue()];
        [(AXEventPathInfoRepresentation *)v36 setPhaseBits:IOHIDEventGetPhase()];

        v15 = v114;
        v31 = v117;
        v34 = v121;
      }

      v32 = ++v35;
    }

    while (v119 > v35);
  }

  handInfo7 = [(AXEventRepresentation *)v5 handInfo];
  [handInfo7 setPathsIncludingMayBeginEvents:v31];

  v67 = representationCopy;
  IOHIDEventGetFloatValue();
  v69 = v68;
  IOHIDEventGetFloatValue();
  v71 = v70;
  v72 = *(MEMORY[0x1E695EFF8] + 8);
  v73 = *MEMORY[0x1E695EFF8] == v69 && v72 == v70;
  v123 = v33;
  if (v73 && [v31 count])
  {
    v74 = [v31 objectAtIndex:0];
    [v74 pathLocation];
    v69 = v75;
    v71 = v76;
  }

  [(AXEventRepresentation *)v5 setWindowLocation:v69, v71];
  [(AXEventRepresentation *)v5 setLocation:v69, v71];
  [(AXEventRepresentation *)v5 setType:3001];
  v77 = v26[369];
  v78 = identifierCopy;
  [v77 lock];
  v79 = [HIDStreamIdentifierTouchCounts objectForKey:v78];

  v80 = v26;
  integerValue = [v79 integerValue];

  [v80[369] unlock];
  handInfo8 = [(AXEventRepresentation *)v5 handInfo];
  [handInfo8 setCurrentFingerCount:v34];

  handInfo9 = [(AXEventRepresentation *)v5 handInfo];
  v84 = handInfo9;
  if (integerValue <= 0)
  {
    v85 = v119;
  }

  else
  {
    v85 = integerValue;
  }

  [handInfo9 setInitialFingerCount:v85];

  v86 = v78;
  [v80[369] lock];
  v87 = [HIDStreamIdentifierPhasesForTouches objectForKey:v86];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  allValues = [v87 allValues];
  v89 = [allValues countByEnumeratingWithState:&v124 objects:v128 count:16];
  if (v89)
  {
    v90 = v89;
    v91 = v34;
    v92 = 0;
    v93 = *v125;
    do
    {
      for (i = 0; i != v90; ++i)
      {
        if (*v125 != v93)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v124 + 1) + 8 * i) unsignedIntValue] != 8)
        {
          ++v92;
        }
      }

      v90 = [allValues countByEnumeratingWithState:&v124 objects:v128 count:16];
    }

    while (v90);
    v5 = v115;
    v34 = v91;
    v67 = representationCopy;
  }

  else
  {
    v92 = 0;
  }

  [HIDStreamLock unlock];
  handInfo10 = [(AXEventRepresentation *)v5 handInfo];
  [handInfo10 setLifetimeFingerCount:v92];

  if (v110 < 0)
  {
    handInfo11 = [(AXEventRepresentation *)v5 handInfo];
    [handInfo11 setEventType:8];

    _setInitialTouchCount(0, v86);
    [HIDStreamLock lock];
    [HIDStreamIdentifierPhasesForTouches removeAllObjects];
    [HIDStreamLock unlock];
    v96 = v111;
  }

  else
  {
    v96 = v111;
    if (v111)
    {
      v97 = 11;
LABEL_64:
      handInfo12 = [(AXEventRepresentation *)v5 handInfo];
      [handInfo12 setEventType:v97];

      goto LABEL_97;
    }

    if (v34)
    {
      v100 = integerValue == v34;
    }

    else
    {
      v100 = 1;
    }

    v102 = !v100 && integerValue > 0;
    if ((v102 & v123) == 1)
    {
      handInfo13 = [(AXEventRepresentation *)v5 handInfo];
      v104 = handInfo13;
      v105 = 5;
    }

    else if (!v34 || integerValue)
    {
      if (!v15)
      {
        v97 = 12;
        goto LABEL_64;
      }

      if (v34)
      {
        v106 = 1;
      }

      else
      {
        v106 = integerValue == 0;
      }

      v107 = v106;
      if ((v107 | v113))
      {
        if (((v34 == 0) & (v118 ^ 1)) != 0)
        {
          if (v113)
          {
            handInfo13 = [(AXEventRepresentation *)v5 handInfo];
            v104 = handInfo13;
            v105 = 9;
          }

          else if (integerValue)
          {
            _AXAssert();
            handInfo13 = [(AXEventRepresentation *)v5 handInfo:v67];
            v104 = handInfo13;
            v105 = 0;
          }

          else
          {
            handInfo13 = [(AXEventRepresentation *)v5 handInfo];
            v104 = handInfo13;
            v105 = 10;
          }
        }

        else
        {
          handInfo13 = [(AXEventRepresentation *)v5 handInfo];
          v104 = handInfo13;
          v105 = 2;
        }
      }

      else
      {
        handInfo13 = [(AXEventRepresentation *)v5 handInfo];
        v104 = handInfo13;
        v105 = 6;
      }
    }

    else
    {
      handInfo13 = [(AXEventRepresentation *)v5 handInfo];
      v104 = handInfo13;
      v105 = 1;
    }

    [handInfo13 setEventType:v105];
  }

  if (v15)
  {
    v108 = v96;
  }

  else
  {
    v108 = 1;
  }

  if (v108)
  {
LABEL_97:
    if ((IOHIDEventGetIntegerValue() & 0x200) == 0)
    {
      goto LABEL_99;
    }
  }

  _setInitialTouchCount(v34, v86);
LABEL_99:

  return v5;
}

- (BOOL)isUpdate
{
  if (![(AXEventRepresentation *)self generationCount])
  {
    return 0;
  }

  didUpdateMask = [(AXEventRepresentation *)self didUpdateMask];
  handInfo = [(AXEventRepresentation *)self handInfo];
  paths = [handInfo paths];

  if (didUpdateMask)
  {
    v6 = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [paths count];
      v6 = v7 < v8;
      if (v7 >= v8)
      {
        break;
      }

      v9 = [paths objectAtIndex:v7];
      didUpdateMask2 = [v9 didUpdateMask];

      ++v7;
    }

    while (!didUpdateMask2);
  }

  return v6;
}

- (BOOL)willBeUpdated
{
  if (![(AXEventRepresentation *)self generationCount])
  {
    return 0;
  }

  willUpdateMask = [(AXEventRepresentation *)self willUpdateMask];
  handInfo = [(AXEventRepresentation *)self handInfo];
  paths = [handInfo paths];

  if (willUpdateMask)
  {
    v6 = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [paths count];
      v6 = v7 < v8;
      if (v7 >= v8)
      {
        break;
      }

      v9 = [paths objectAtIndex:v7];
      willUpdateMask2 = [v9 willUpdateMask];

      ++v7;
    }

    while (!willUpdateMask2);
  }

  return v6;
}

+ (void)_appendKeyInfoToMediaKey:(id)key usage:(int64_t)usage downEvent:(BOOL)event
{
  eventCopy = event;
  keyCopy = key;
  v7 = objc_alloc_init(AXEventKeyInfoRepresentation);
  if (usage <= 225)
  {
    if (usage > 183)
    {
      v8 = keyCopy;
      if (usage == 184)
      {
        goto LABEL_18;
      }

      if (usage == 205)
      {
        usage = 65;
        goto LABEL_18;
      }
    }

    else
    {
      v8 = keyCopy;
      if (usage == 179)
      {
        usage = 66;
        goto LABEL_18;
      }

      if (usage == 180)
      {
        usage = 64;
LABEL_18:
        [keyCopy setOriginalType:{objc_msgSend(v8, "type")}];
        if (eventCopy)
        {
          v9 = 10;
        }

        else
        {
          v9 = 11;
        }

        [keyCopy setType:v9];
        goto LABEL_22;
      }
    }

LABEL_15:
    usage = 0;
    goto LABEL_18;
  }

  if (usage > 233)
  {
    v8 = keyCopy;
    if (usage == 234)
    {
      usage = 68;
    }

    else if (usage != 669)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = keyCopy;
    if (usage == 226)
    {
      usage = 67;
      goto LABEL_18;
    }

    if (usage != 233)
    {
      goto LABEL_15;
    }

    usage = 69;
  }

LABEL_22:
  [(AXEventKeyInfoRepresentation *)v7 setUsagePage:7];
  [(AXEventKeyInfoRepresentation *)v7 setKeyCode:usage];
  [(AXEventKeyInfoRepresentation *)v7 setKeyDown:eventCopy];
  [keyCopy setKeyInfo:v7];
}

+ (id)_keyboardButtonEvent:(__IOHIDEvent *)event
{
  v5 = objc_alloc_init(AXEventRepresentation);
  IntegerValue = IOHIDEventGetIntegerValue();
  v7 = IOHIDEventGetIntegerValue();
  v8 = IOHIDEventGetIntegerValue();
  v9 = v8;
  if (IntegerValue <= 11)
  {
    if (IntegerValue > 8)
    {
      if (IntegerValue != 9)
      {
        if (IntegerValue != 11)
        {
          goto LABEL_136;
        }

        if (v7 == 45)
        {
          v12 = v8 == 0;
          v13 = 1042;
        }

        else
        {
          if (v7 != 46)
          {
            goto LABEL_136;
          }

          v12 = v8 == 0;
          v13 = 1012;
        }

        if (v12)
        {
          v20 = v13;
        }

        else
        {
          v20 = v13 + 1;
        }

        goto LABEL_135;
      }

      if (v7 != 3)
      {
        if (v7 == 2)
        {
LABEL_67:
          v10 = v8 == 0;
          v11 = 4202;
          goto LABEL_132;
        }

        if (v7 != 1)
        {
          goto LABEL_136;
        }

LABEL_42:
        v10 = v8 == 0;
        v11 = 4200;
        goto LABEL_132;
      }
    }

    else
    {
      if (IntegerValue != 1)
      {
        if (IntegerValue != 7)
        {
          goto LABEL_136;
        }

LABEL_18:
        v14 = objc_alloc_init(AXEventKeyInfoRepresentation);
        if (v9)
        {
          v15 = 10;
        }

        else
        {
          v15 = 11;
        }

        [(AXEventRepresentation *)v5 setType:v15];
        if (IntegerValue == 65281)
        {
          if (v7 > 31)
          {
            switch(v7)
            {
              case 32:
                v16 = v14;
                v17 = 59;
                goto LABEL_90;
              case 33:
                v16 = v14;
                v17 = 58;
                goto LABEL_90;
              case 512:
                if (v9)
                {
                  v18 = 1105;
                }

                else
                {
                  v18 = 1106;
                }

                [(AXEventRepresentation *)v5 setType:v18];
                goto LABEL_91;
            }
          }

          else if (v7 == 2 || v7 == 4)
          {
            [(AXEventKeyInfoRepresentation *)v14 setAlternativeKeyCode:61];
          }

          else if (v7 == 16)
          {
            v16 = v14;
            v17 = 60;
LABEL_90:
            [(AXEventKeyInfoRepresentation *)v16 setAlternativeKeyCode:v17];
LABEL_91:
            [(AXEventKeyInfoRepresentation *)v14 setKeyCode:v7];
            [(AXEventKeyInfoRepresentation *)v14 setUsagePage:IntegerValue];
            [(AXEventKeyInfoRepresentation *)v14 setKeyDown:v9 != 0];
            [(AXEventRepresentation *)v5 setKeyInfo:v14];
            [(AXEventRepresentation *)v5 setFlags:IOHIDEventGetEventFlags()];

            goto LABEL_136;
          }
        }

        v19 = IntegerValue == 65281 || IntegerValue == 255;
        if (v19 && v7 == 3)
        {
          _AXEventKeyInfoSetSimulatedFNKeyDown(v9 != 0);
          [self _appendKeyInfoToMediaKey:v5 usage:3 downEvent:v9 != 0];
        }

        goto LABEL_91;
      }

      if (v7 > 137)
      {
        if (v7 > 139)
        {
          if (v7 == 141)
          {
            v10 = v8 == 0;
            v11 = 1210;
          }

          else
          {
            if (v7 != 140)
            {
              goto LABEL_136;
            }

            v10 = v8 == 0;
            v11 = 1208;
          }
        }

        else
        {
          v10 = v8 == 0;
          if (v7 == 138)
          {
            v11 = 1214;
          }

          else
          {
            v11 = 1212;
          }
        }

        goto LABEL_132;
      }

      if (v7 <= 2)
      {
        if (v7 != 1)
        {
          if (v7 != 2)
          {
            goto LABEL_136;
          }

          goto LABEL_67;
        }

        goto LABEL_42;
      }

      if (v7 != 3)
      {
        if (v7 != 134)
        {
          goto LABEL_136;
        }

        v10 = v8 == 0;
        v11 = 1216;
        goto LABEL_132;
      }
    }

    v10 = v8 == 0;
    v11 = 4204;
LABEL_132:
    if (v10)
    {
      v20 = v11 + 1;
    }

    else
    {
      v20 = v11;
    }

LABEL_135:
    [(AXEventRepresentation *)v5 setType:v20];
    goto LABEL_136;
  }

  if (IntegerValue > 254)
  {
    if (IntegerValue == 255 || IntegerValue == 65281)
    {
      goto LABEL_18;
    }

    goto LABEL_136;
  }

  if (IntegerValue == 12)
  {
    if (v7 <= 175)
    {
      if (v7 > 67)
      {
        if (v7 > 127)
        {
          switch(v7)
          {
            case 128:
              v10 = v8 == 0;
              v11 = 1220;
              goto LABEL_132;
            case 141:
              v10 = v8 == 0;
              v11 = 1226;
              goto LABEL_132;
            case 149:
              v10 = v8 == 0;
              v11 = 1103;
              goto LABEL_132;
          }
        }

        else
        {
          switch(v7)
          {
            case 'D':
              v10 = v8 == 0;
              v11 = 1204;
              goto LABEL_132;
            case 'E':
              v10 = v8 == 0;
              v11 = 1206;
              goto LABEL_132;
              v10 = v8 == 0;
              v11 = 1222;
              goto LABEL_132;
          }
        }
      }

      else
      {
        if (v7 > 64)
        {
          if (v7 == 65)
          {
            v10 = v8 == 0;
            v11 = 1218;
          }

          else
          {
            v10 = v8 == 0;
            if (v7 == 66)
            {
              v11 = 1200;
            }

            else
            {
              v11 = 1202;
            }
          }

          goto LABEL_132;
        }

        switch(v7)
        {
          case 4:
            v10 = v8 == 0;
            v11 = 1224;
            goto LABEL_132;
          case 48:
            v10 = v8 == 0;
            v11 = 1010;
            goto LABEL_132;
          case 64:
            v10 = v8 == 0;
            v11 = 1000;
            goto LABEL_132;
        }
      }
    }

    else
    {
      if (v7 <= 204)
      {
        if (v7 <= 178)
        {
          if (v7 == 176)
          {
            v10 = v8 == 0;
            v11 = 1027;
          }

          else
          {
            v10 = v8 == 0;
            if (v7 == 177)
            {
              v11 = 1036;
            }

            else
            {
              v11 = 1021;
            }
          }

          goto LABEL_132;
        }

        switch(v7)
        {
          case 179:
            v21 = v8 != 0;
            if (v8)
            {
              v29 = 1038;
            }

            else
            {
              v29 = 1039;
            }

            [(AXEventRepresentation *)v5 setType:v29];
            selfCopy8 = self;
            v24 = v5;
            v25 = 179;
            break;
          case 180:
            v21 = v8 != 0;
            if (v8)
            {
              v27 = 1040;
            }

            else
            {
              v27 = 1041;
            }

            [(AXEventRepresentation *)v5 setType:v27];
            selfCopy8 = self;
            v24 = v5;
            v25 = 180;
            break;
          case 184:
            v21 = v8 != 0;
            if (v8)
            {
              v22 = 1029;
            }

            else
            {
              v22 = 1030;
            }

            [(AXEventRepresentation *)v5 setType:v22];
            selfCopy8 = self;
            v24 = v5;
            v25 = 184;
            break;
          default:
            goto LABEL_160;
        }

        goto LABEL_159;
      }

      if (v7 <= 233)
      {
        switch(v7)
        {
          case 205:
            v21 = v8 != 0;
            if (v8)
            {
              v33 = 1032;
            }

            else
            {
              v33 = 1033;
            }

            [(AXEventRepresentation *)v5 setType:v33];
            selfCopy8 = self;
            v24 = v5;
            v25 = 205;
            break;
          case 226:
            v21 = v8 != 0;
            if (v8)
            {
              v32 = 1025;
            }

            else
            {
              v32 = 1026;
            }

            [(AXEventRepresentation *)v5 setType:v32];
            selfCopy8 = self;
            v24 = v5;
            v25 = 226;
            break;
          case 233:
            v21 = v8 != 0;
            if (v8)
            {
              v26 = 1006;
            }

            else
            {
              v26 = 1007;
            }

            [(AXEventRepresentation *)v5 setType:v26];
            selfCopy8 = self;
            v24 = v5;
            v25 = 233;
            break;
          default:
            goto LABEL_160;
        }

        goto LABEL_159;
      }

      if (v7 <= 546)
      {
        if (v7 != 234)
        {
          if (v7 == 433)
          {
            v10 = v8 == 0;
            v11 = 1023;
            goto LABEL_132;
          }

          goto LABEL_160;
        }

        v21 = v8 != 0;
        if (v8)
        {
          v30 = 1008;
        }

        else
        {
          v30 = 1009;
        }

        [(AXEventRepresentation *)v5 setType:v30];
        selfCopy8 = self;
        v24 = v5;
        v25 = 234;
LABEL_159:
        [selfCopy8 _appendKeyInfoToMediaKey:v24 usage:v25 downEvent:v21];
        goto LABEL_136;
      }

      if (v7 == 669)
      {
        v21 = v8 != 0;
        if (v8)
        {
          v31 = 4500;
        }

        else
        {
          v31 = 4501;
        }

        [(AXEventRepresentation *)v5 setType:v31];
        _AXEventKeyInfoSetSimulatedFNKeyDown(v21);
        selfCopy8 = self;
        v24 = v5;
        v25 = 669;
        goto LABEL_159;
      }

      if (v7 == 547)
      {
        v10 = v8 == 0;
        v11 = 1034;
        goto LABEL_132;
      }
    }

LABEL_160:

    v5 = 0;
    goto LABEL_136;
  }

  if (IntegerValue == 144 && v7 == 33)
  {
    v10 = v8 == 0;
    v11 = 1044;
    goto LABEL_132;
  }

LABEL_136:
  [(AXEventRepresentation *)v5 setContextId:_ContextIDFromEvent(event)];

  return v5;
}

+ (id)_wheelEvent:(__IOHIDEvent *)event
{
  v3 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v3 setType:1100];
  [(AXEventRepresentation *)v3 setScrollAmount:IOHIDEventGetIntegerValue()];
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    v5 = Children;
    if (CFArrayGetCount(Children) >= 1)
    {
      CFArrayGetValueAtIndex(v5, 0);
      IOHIDEventGetFloatValue();
      [(AXEventRepresentation *)v3 setScrollAccelAmount:v6];
    }
  }

  return v3;
}

+ (id)_gameControllerEvent:(__IOHIDEvent *)event
{
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:1300];
  v5 = [AXGameControllerEvent axGameControllerInfoRepresentationFromEvent:event];
  [(AXEventRepresentation *)v4 setGameControllerInfo:v5];

  return v4;
}

+ (id)_pointerControllerEvent:(__IOHIDEvent *)event hidStreamIdentifier:(id)identifier serviceClient:(__IOHIDServiceClient *)client
{
  identifierCopy = identifier;
  v8 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v8 setType:3200];
  v9 = objc_alloc_init(AXEventPointerInfoRepresentation);
  [(AXEventRepresentation *)v8 setPointerControllerInfo:v9];
  IOHIDEventGetFloatMultiple();
  [(AXEventPointerInfoRepresentation *)v9 setPointerX:v19];
  [(AXEventPointerInfoRepresentation *)v9 setPointerY:v20];
  [(AXEventPointerInfoRepresentation *)v9 setPointerZ:v21];
  [(AXEventPointerInfoRepresentation *)v9 setPointerButtonMask:v22];
  [(AXEventPointerInfoRepresentation *)v9 setPointerButtonNumber:v23];
  [(AXEventPointerInfoRepresentation *)v9 setPointerButtonClickCount:v24];
  [(AXEventPointerInfoRepresentation *)v9 setPointerButtonPressure:v25];
  [(AXEventPointerInfoRepresentation *)v9 setPointerIsAbsolute:IOHIDEventGetEventFlags() & 1];
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    v11 = Children;
    Count = CFArrayGetCount(Children);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
        Type = IOHIDEventGetType();
        if (Type > 10)
        {
          break;
        }

        if (Type == 2)
        {
          IOHIDEventGetFloatValue();
          [(AXEventPointerInfoRepresentation *)v9 setPointerButtonMask:?];
          IOHIDEventGetFloatValue();
          [(AXEventPointerInfoRepresentation *)v9 setPointerButtonNumber:?];
          IOHIDEventGetFloatValue();
          [(AXEventPointerInfoRepresentation *)v9 setPointerButtonClickCount:?];
          IOHIDEventGetFloatValue();
          [(AXEventPointerInfoRepresentation *)v9 setPointerButtonPressure:?];
        }

        else if (Type == 6)
        {
          v17 = [self representationWithHIDEvent:ValueAtIndex hidStreamIdentifier:identifierCopy];
          [(AXEventPointerInfoRepresentation *)v9 setScrollEvent:v17];
LABEL_13:
        }

LABEL_14:
        if (v13 == ++v14)
        {
          goto LABEL_15;
        }
      }

      if (Type != 11)
      {
        if (Type == 17)
        {
          IOHIDEventGetFloatValue();
          [(AXEventPointerInfoRepresentation *)v9 setPointerAccelX:?];
          IOHIDEventGetFloatValue();
          [(AXEventPointerInfoRepresentation *)v9 setPointerAccelY:?];
          IOHIDEventGetFloatValue();
          [(AXEventPointerInfoRepresentation *)v9 setPointerAccelZ:?];
          [(AXEventPointerInfoRepresentation *)v9 setIsPointerMove:1];
        }

        goto LABEL_14;
      }

      v17 = [self representationWithHIDEvent:ValueAtIndex hidStreamIdentifier:identifierCopy];
      [(AXEventPointerInfoRepresentation *)v9 setTrackpadHandEvent:v17];
      goto LABEL_13;
    }
  }

LABEL_15:
  [(AXEventRepresentation *)v8 setContextId:_ContextIDFromEvent(event)];

  return v8;
}

+ (id)_vendorDefinedAccessibilityEvent:(__IOHIDEvent *)event
{
  if ([self _HIDEventIsAccessibilityEvent:event])
  {
    v3 = objc_alloc_init(AXEventRepresentation);
    [(AXEventRepresentation *)v3 setType:5000];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (AXEventRepresentation)representationWithLocation:(CGPoint)location windowLocation:(CGPoint)windowLocation handInfo:(id)info
{
  y = windowLocation.y;
  x = windowLocation.x;
  v7 = location.y;
  v8 = location.x;
  infoCopy = info;
  v10 = [AXEventRepresentation representationWithType:0 subtype:0 time:mach_absolute_time() location:infoCopy windowLocation:v8 handInfo:v7, x, y];

  return v10;
}

+ (AXEventRepresentation)representationWithHIDEvent:(__IOHIDEvent *)event serviceClient:(__IOHIDServiceClient *)client hidStreamIdentifier:(id)identifier clientID:(id)d taskPort:(unsigned int)port
{
  v7 = *&port;
  v44 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  if (!event)
  {
    v15 = 0;
LABEL_27:
    if (!v15)
    {
      mEMORY[0x1E69887C0] = [MEMORY[0x1E69887C0] sharedInstance];
      ignoreLogging = [mEMORY[0x1E69887C0] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x1E69887C0] identifier];
        v27 = AXLoggerForFacility();

        v28 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = AXColorizeFormatLog();
          eventCopy = event;
          v41 = identifierCopy;
          v30 = _AXStringForArgs();
          if (os_log_type_enabled(v27, v28))
          {
            *buf = 138543362;
            v43 = v30;
            _os_log_impl(&dword_18B15E000, v27, v28, "%{public}@", buf, 0xCu);
          }
        }
      }
    }

    goto LABEL_34;
  }

  Type = IOHIDEventGetType();
  v15 = 0;
  v16 = 1;
  if (Type > 10)
  {
    switch(Type)
    {
      case 35:
        v17 = [self _gameControllerEvent:event];
        break;
      case 17:
        v17 = [self _pointerControllerEvent:event hidStreamIdentifier:identifierCopy serviceClient:client];
        break;
      case 11:
        v17 = [self _digitizerRepresentation:event hidStreamIdentifier:identifierCopy];
        break;
      default:
        goto LABEL_19;
    }
  }

  else
  {
    if (Type == 1)
    {
      v15 = [self _vendorDefinedAccessibilityEvent:event];
      v16 = v15 == 0;
      goto LABEL_19;
    }

    if (Type == 3)
    {
      v15 = [self _keyboardButtonEvent:event];
      if (v15)
      {
        v18 = [self _gameKeyboardControllerEvent:event];
        [v15 setGameControllerInfo:v18];
      }

      goto LABEL_18;
    }

    if (Type != 6)
    {
      goto LABEL_19;
    }

    v17 = [self _wheelEvent:event];
  }

  v15 = v17;
LABEL_18:
  v16 = 0;
LABEL_19:
  [v15 setClientId:dCopy];
  [v15 setTaskPort:v7];
  AttributeDataLength = IOHIDEventGetAttributeDataLength();
  if (AttributeDataLength >= 1)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:IOHIDEventGetAttributeDataPtr() length:AttributeDataLength];
    [v15 setHIDAttributeData:v20];
  }

  [v15 setIsBuiltIn:IOHIDEventGetIntegerValue() != 0];
  v21 = IOHIDEventGetType() == 11 && IOHIDEventGetIntegerValue() != 0;
  [v15 setIsDisplayIntegrated:v21];
  [v15 setGenerationCount:IOHIDEventGetIntegerValue()];
  [v15 setWillUpdateMask:IOHIDEventGetIntegerValue()];
  [v15 setDidUpdateMask:IOHIDEventGetIntegerValue()];
  [v15 setSenderID:IOHIDEventGetSenderID()];
  [v15 setHIDTime:IOHIDEventGetTimeStamp()];
  hIDTime = [v15 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [v15 setTime:(*&_AXGSEventConvertFromMachTime___scale * hIDTime)];
  [v15 setIsGeneratedEvent:0];
  [v15 setCreatorHIDEvent:event];
  [v15 setCreatorHIDServiceClient:client];
  v23 = [v15 _accessibilityDataFromRealEvent:event];
  [v15 setAccessibilityData:v23];

  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_34:
  v38 = Children && (v32 = Children, CFArrayGetCount(Children) >= 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v32, 0), _GetSubEventInfoFromDigitizerEventForPathEvent(event, ValueAtIndex), v34 = Children = IOHIDEventGetChildren();
  [v15 setSystemDrag:{v38, eventCopy, v41}];

  return v15;
}

+ (id)accelerometerRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:23];
  [(AXEventRepresentation *)v4 setHIDTime:mach_absolute_time()];
  hIDTime = [(AXEventRepresentation *)v4 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v4 setTime:(*&_AXGSEventConvertFromMachTime___scale * hIDTime)];
  [(AXEventRepresentation *)v4 setAccelerometerInfo:representationCopy];

  return v4;
}

+ (id)keyRepresentationWithType:(unsigned int)type
{
  v3 = *&type;
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:v3];
  [(AXEventRepresentation *)v4 setHIDTime:mach_absolute_time()];
  hIDTime = [(AXEventRepresentation *)v4 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v4 setTime:(*&_AXGSEventConvertFromMachTime___scale * hIDTime)];
  v6 = objc_alloc_init(AXEventKeyInfoRepresentation);
  [(AXEventKeyInfoRepresentation *)v6 setKeyDown:v3 == 10];
  [(AXEventKeyInfoRepresentation *)v6 setUsagePage:7];
  [(AXEventRepresentation *)v4 setKeyInfo:v6];
  [(AXEventRepresentation *)v4 setIsGeneratedEvent:1];

  return v4;
}

+ (id)buttonRepresentationWithType:(unsigned int)type
{
  v3 = *&type;
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:v3];
  [(AXEventRepresentation *)v4 setHIDTime:mach_absolute_time()];
  hIDTime = [(AXEventRepresentation *)v4 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v4 setTime:(*&_AXGSEventConvertFromMachTime___scale * hIDTime)];
  [(AXEventRepresentation *)v4 setIsGeneratedEvent:1];

  return v4;
}

+ (id)iosmacPointerRepresentationWithTypeWithPointerInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:3201];
  [(AXEventRepresentation *)v4 setHIDTime:mach_absolute_time()];
  hIDTime = [(AXEventRepresentation *)v4 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v4 setTime:(*&_AXGSEventConvertFromMachTime___scale * hIDTime)];
  [(AXEventRepresentation *)v4 setIsGeneratedEvent:1];
  [(AXEventRepresentation *)v4 setIosmacPointerInfo:infoCopy];

  return v4;
}

+ (id)gestureRepresentationWithHandType:(unsigned int)type locations:(id)locations
{
  v4 = *&type;
  v32 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v6 = objc_alloc_init(AXEventHandInfoRepresentation);
  [(AXEventHandInfoRepresentation *)v6 setEventType:v4];
  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = locationsCopy;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = objc_alloc_init(AXEventPathInfoRepresentation);
        [v13 axCGPointValue];
        [(AXEventPathInfoRepresentation *)v14 setPathLocation:?];
        [(AXEventPathInfoRepresentation *)v14 setPathIndex:v11];
        [(AXEventPathInfoRepresentation *)v14 setPathIdentity:v11];
        [(AXEventPathInfoRepresentation *)v14 setTransducerType:2];
        if (v4 <= 0xB && ((1 << v4) & 0x826) != 0)
        {
          [(AXEventPathInfoRepresentation *)v14 setPathProximity:[(AXEventPathInfoRepresentation *)v14 pathProximity]| 3];
        }

        [(AXEventHandInfoRepresentation *)v6 setHandIndex:1];
        [array addObject:v14];
        ++v11;
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  [(AXEventHandInfoRepresentation *)v6 setPaths:array];
  v15 = mach_absolute_time();
  firstObject = [obj firstObject];
  [firstObject axCGPointValue];
  v18 = v17;
  v20 = v19;
  firstObject2 = [obj firstObject];
  [firstObject2 axCGPointValue];
  v24 = [AXEventRepresentation representationWithType:3001 subtype:0 time:v15 location:v6 windowLocation:v18 handInfo:v20, v22, v23];

  return v24;
}

+ (id)touchRepresentationWithHandType:(unsigned int)type location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = *&type;
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(AXEventHandInfoRepresentation);
  [(AXEventHandInfoRepresentation *)v7 setEventType:v6];
  v8 = objc_alloc_init(AXEventPathInfoRepresentation);
  [(AXEventPathInfoRepresentation *)v8 setPathLocation:x, y];
  [(AXEventPathInfoRepresentation *)v8 setPathIndex:1];
  [(AXEventPathInfoRepresentation *)v8 setTransducerType:2];
  if (v6 <= 0xB && ((1 << v6) & 0x806) != 0)
  {
    [(AXEventPathInfoRepresentation *)v8 setPathProximity:[(AXEventPathInfoRepresentation *)v8 pathProximity]| 3];
  }

  [(AXEventHandInfoRepresentation *)v7 setHandIndex:1];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(AXEventHandInfoRepresentation *)v7 setPaths:v9];

  if (v6 == 1)
  {
    [objc_opt_class() incrementTouchCounter];
  }

  v10 = [AXEventRepresentation representationWithType:3001 subtype:0 time:mach_absolute_time() location:v7 windowLocation:x handInfo:y, x, y];

  return v10;
}

+ (id)accessibilityEventRepresentationWithSender:(int64_t)sender usagePage:(int64_t)page usage:(int64_t)usage modifierFlags:(int64_t)flags eventValue1:(float)value1 eventValue2:(float)value2
{
  v14 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v14 setType:5000];
  [(AXEventRepresentation *)v14 setHIDTime:mach_absolute_time()];
  hIDTime = [(AXEventRepresentation *)v14 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v14 setTime:(*&_AXGSEventConvertFromMachTime___scale * hIDTime)];
  [(AXEventRepresentation *)v14 setIsGeneratedEvent:1];
  *&v16 = value1;
  *&v17 = value2;
  v18 = [AXEventData dataWithSender:sender page:page usage:usage modifierFlags:flags eventValue1:v16 eventValue2:v17];
  [(AXEventRepresentation *)v14 setAccessibilityData:v18];

  return v14;
}

- (id)dataRepresentation
{
  v4 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v4];

  return v2;
}

- (__IOHIDEvent)newHIDEventRef
{
  originalType = [(AXEventRepresentation *)self originalType];
  v4 = 0;
  if (originalType <= 1100)
  {
    if (originalType <= 999)
    {
      if ((originalType - 10) >= 3)
      {
        if (originalType != 23)
        {
          return v4;
        }

        _newAccelerometerHIDEventRef = [(AXEventRepresentation *)self _newAccelerometerHIDEventRef];
      }

      else
      {
        _newAccelerometerHIDEventRef = [(AXEventRepresentation *)self _newKeyboardHIDEventRef];
      }

      goto LABEL_21;
    }

    v6 = originalType + 24;
    if ((originalType - 1000) <= 0x33)
    {
      if (((1 << v6) & 0xFCF66603FC3) != 0)
      {
        goto LABEL_20;
      }

      if (((1 << v6) & 0xFF00000000000) != 0)
      {
        _newAccelerometerHIDEventRef = [(AXEventRepresentation *)self _newTostadaButtonHIDEventRefWithType:originalType];
        goto LABEL_21;
      }
    }

    if (originalType != 1100)
    {
      return v4;
    }

    return [(AXEventRepresentation *)self _newScrollHIDEventRef];
  }

  else
  {
    if (originalType <= 3200)
    {
      if (((originalType - 1200) > 0x19 || ((1 << (originalType + 80)) & 0x3CFFFFF) == 0) && (originalType - 1101) >= 6)
      {
        if (originalType == 3001)
        {
          _newAccelerometerHIDEventRef = [(AXEventRepresentation *)self _newHandHIDEventRef];
          goto LABEL_21;
        }

        return v4;
      }

      goto LABEL_20;
    }

    if (originalType <= 4499)
    {
      if ((originalType - 4200) >= 6)
      {
        if (originalType != 3201)
        {
          return v4;
        }

        _newAccelerometerHIDEventRef = [(AXEventRepresentation *)self _newIOSMACPointerRef];
LABEL_21:
        v4 = _newAccelerometerHIDEventRef;
        if (_newAccelerometerHIDEventRef)
        {
          [(AXEventRepresentation *)self isBuiltIn];
          IOHIDEventSetIntegerValue();
          [(AXEventRepresentation *)self _applyAccessibilityDataToRealEvent:v4];
        }

        return v4;
      }

LABEL_20:
      _newAccelerometerHIDEventRef = [(AXEventRepresentation *)self _newButtonHIDEventRefWithType:originalType];
      goto LABEL_21;
    }

    if ((originalType - 4500) < 2)
    {
      goto LABEL_20;
    }

    if (originalType != 5000)
    {
      return v4;
    }

    return [(AXEventRepresentation *)self _newAccessibilityHIDEventRef];
  }
}

- (BOOL)isDownEvent
{
  type = [(AXEventRepresentation *)self type];
  result = 1;
  if (type > 1199)
  {
    v4 = type - 1200;
    v5 = v4 > 0x1E;
    v6 = (1 << v4) & 0x55555555;
    if (!v5 && v6 != 0)
    {
      return result;
    }

    return 0;
  }

  if (((type - 1006) > 0x1A || ((1 << (type + 18)) & 0x4200005) == 0) && ((type - 1101) > 4 || ((1 << (type - 77)) & 0x15) == 0) && type != 10)
  {
    return 0;
  }

  return result;
}

- (unint64_t)_machTimeForHIDEventRef
{
  v3 = mach_absolute_time();
  if (![(AXEventRepresentation *)self useOriginalHIDTime])
  {
    return v3;
  }

  return [(AXEventRepresentation *)self HIDTime];
}

- (__IOHIDEvent)_newAccelerometerHIDEventRef
{
  [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  accelerometerInfo = [(AXEventRepresentation *)self accelerometerInfo];
  [accelerometerInfo x];
  accelerometerInfo2 = [(AXEventRepresentation *)self accelerometerInfo];
  [accelerometerInfo2 y];
  accelerometerInfo3 = [(AXEventRepresentation *)self accelerometerInfo];
  [accelerometerInfo3 z];
  accelerometerInfo4 = [(AXEventRepresentation *)self accelerometerInfo];
  [accelerometerInfo4 type];
  AccelerometerEventWithType = IOHIDEventCreateAccelerometerEventWithType();

  [(AXEventRepresentation *)self senderID];
  IOHIDEventSetSenderID();
  return AccelerometerEventWithType;
}

- (__IOHIDEvent)_newScrollHIDEventRef
{
  v3 = *MEMORY[0x1E695E480];
  _machTimeForHIDEventRef = [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  v5.n128_f64[0] = [(AXEventRepresentation *)self scrollAmount];
  v6.n128_u64[0] = 0;
  v7.n128_u64[0] = 0;

  return MEMORY[0x1EEDC7FB0](v3, _machTimeForHIDEventRef, 0, v6, v5, v7);
}

- (__IOHIDEvent)_newKeyboardHIDEventRef
{
  keyInfo = [(AXEventRepresentation *)self keyInfo];
  [keyInfo usagePage];

  [(AXEventRepresentation *)self isDownEvent];
  [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  hIDAttributeData = [(AXEventRepresentation *)self HIDAttributeData];

  if (hIDAttributeData)
  {
    hIDAttributeData2 = [(AXEventRepresentation *)self HIDAttributeData];
    [hIDAttributeData2 bytes];
    hIDAttributeData3 = [(AXEventRepresentation *)self HIDAttributeData];
    [hIDAttributeData3 length];
    IOHIDEventSetAttributeData();
  }

  [(AXEventRepresentation *)self senderID];
  IOHIDEventSetSenderID();
  keyInfo2 = [(AXEventRepresentation *)self keyInfo];
  [keyInfo2 keyCode];
  IOHIDEventSetIntegerValue();

  IOHIDEventSetIntegerValue();
  [(AXEventRepresentation *)self flags];
  IOHIDEventSetEventFlags();
  return KeyboardEvent;
}

- (__IOHIDEvent)_newButtonHIDEventRefWithType:(unsigned int)type
{
  KeyboardEvent = 0;
  if (type > 1199)
  {
    if (type <= 4199)
    {
      switch(type)
      {
        case 0x4B0u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B1u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B2u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B3u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B4u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B5u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B6u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B7u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B8u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4B9u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4BAu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4BBu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4BCu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4BDu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4BEu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4BFu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4C0u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4C1u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4C2u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4C3u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4C6u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4C7u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4C8u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4C9u:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4CAu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4CBu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4CCu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4CDu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4CEu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        case 0x4CFu:
          v5 = 0;
          v6 = 0;
          goto LABEL_73;
        default:
          return KeyboardEvent;
      }

      return KeyboardEvent;
    }

    if (type > 4203)
    {
      if (type > 4499)
      {
        if (type == 4500)
        {
          v5 = 0;
          v6 = 0;
        }

        else
        {
          if (type != 4501)
          {
            return KeyboardEvent;
          }

          v5 = 0;
          v6 = 0;
        }
      }

      else if (type == 4204)
      {
        v5 = 0;
        v6 = 0;
      }

      else
      {
        if (type != 4205)
        {
          return KeyboardEvent;
        }

        v5 = 0;
        v6 = 0;
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

LABEL_73:
    [(AXEventRepresentation *)self _machTimeForHIDEventRef];
    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    hIDAttributeData = [(AXEventRepresentation *)self HIDAttributeData];

    if (hIDAttributeData)
    {
      hIDAttributeData2 = [(AXEventRepresentation *)self HIDAttributeData];
      [hIDAttributeData2 bytes];
      hIDAttributeData3 = [(AXEventRepresentation *)self HIDAttributeData];
      [hIDAttributeData3 length];
      IOHIDEventSetAttributeData();
    }

    additionalFlags = [(AXEventRepresentation *)self additionalFlags];
    if (v5 | v6)
    {
      v11 = additionalFlags | 0x40;
    }

    else
    {
      v11 = additionalFlags;
    }

    if (v11)
    {
      IOHIDEventGetEventFlags();
      IOHIDEventSetEventFlags();
    }

    [(AXEventRepresentation *)self senderID];
    IOHIDEventSetSenderID();
    return KeyboardEvent;
  }

  if (type > 1100)
  {
    if (type > 1103)
    {
      switch(type)
      {
        case 0x450u:
          v5 = 0;
          v6 = 0;
          break;
        case 0x451u:
          v5 = 0;
          v6 = 0;
          break;
        case 0x452u:
          v5 = 0;
          v6 = 0;
          break;
        default:
          return KeyboardEvent;
      }
    }

    else if (type == 1101)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    goto LABEL_73;
  }

  v5 = 0;
  v6 = 0;
  switch(type)
  {
    case 0x3E8u:
    case 0x3E9u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x3EEu:
    case 0x3EFu:
      v6 = 0;
      v5 = 1;
      goto LABEL_73;
    case 0x3F0u:
    case 0x3F1u:
      v5 = 0;
      v6 = 1;
      goto LABEL_73;
    case 0x3F2u:
    case 0x3F3u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x3F4u:
    case 0x3F5u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x3FDu:
    case 0x3FEu:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x3FFu:
    case 0x400u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x401u:
      goto LABEL_73;
    case 0x402u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x405u:
    case 0x406u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x408u:
    case 0x409u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x40Au:
    case 0x40Bu:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x40Eu:
    case 0x40Fu:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x410u:
    case 0x411u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    case 0x412u:
    case 0x413u:
      v5 = 0;
      v6 = 0;
      goto LABEL_73;
    default:
      return KeyboardEvent;
  }

  return KeyboardEvent;
}

- (__IOHIDEvent)_newTostadaButtonHIDEventRefWithType:(unsigned int)type
{
  if (type - 1044 > 7)
  {
    return 0;
  }

  [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  TouchSensitiveButtonEvent = IOHIDEventCreateTouchSensitiveButtonEvent();
  ForceStageEvent = IOHIDEventCreateForceStageEvent();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  [(AXEventRepresentation *)self senderID];
  IOHIDEventSetSenderID();
  IOHIDEventAppendEvent();
  IOHIDEventAppendEvent();
  CFRelease(ForceStageEvent);
  CFRelease(VendorDefinedEvent);
  return TouchSensitiveButtonEvent;
}

- (__IOHIDEvent)_newAccessibilityHIDEventRef
{
  [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  accessibilityData = [(AXEventRepresentation *)self accessibilityData];
  v4 = accessibilityData;
  if (accessibilityData)
  {
    [accessibilityData dataBytes];
    [v4 dataLength];
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    [(AXEventRepresentation *)self senderID];
    IOHIDEventSetSenderID();
  }

  else
  {
    VendorDefinedEvent = 0;
  }

  return VendorDefinedEvent;
}

- (id)normalizedEventRepresentation:(BOOL)representation scale:(BOOL)scale
{
  scaleCopy = scale;
  v21 = *MEMORY[0x1E69E9840];
  if (representation)
  {
    selfCopy = [(AXEventRepresentation *)self copy];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  handInfo = [(AXEventRepresentation *)selfCopy handInfo];
  pathsIncludingMayBeginEvents = [handInfo pathsIncludingMayBeginEvents];

  v9 = [pathsIncludingMayBeginEvents countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(pathsIncludingMayBeginEvents);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 pathLocation];
        [v13 setPathLocation:{AXNormalizePoint(scaleCopy, v14)}];
      }

      v10 = [pathsIncludingMayBeginEvents countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v6;
}

- (id)fakeTouchScaleEventRepresentation:(BOOL)representation
{
  v30 = *MEMORY[0x1E69E9840];
  if (fakeTouchScaleEventRepresentation__onceToken == -1)
  {
    if (representation)
    {
LABEL_3:
      selfCopy = [(AXEventRepresentation *)self copy];
      goto LABEL_6;
    }
  }

  else
  {
    [AXEventRepresentation fakeTouchScaleEventRepresentation:];
    if (representation)
    {
      goto LABEL_3;
    }
  }

  selfCopy = self;
LABEL_6:
  v7 = selfCopy;
  LODWORD(v6) = fakeTouchScaleEventRepresentation__TouchScaleFactor;
  if (*&fakeTouchScaleEventRepresentation__TouchScaleFactor != 1.0)
  {
    handInfo = [(AXEventRepresentation *)selfCopy handInfo];
    [handInfo handPosition];
    v10 = v9 * *&fakeTouchScaleEventRepresentation__TouchScaleFactor;
    handInfo2 = [(AXEventRepresentation *)v7 handInfo];
    [handInfo2 handPosition];
    v13 = v12 * *&fakeTouchScaleEventRepresentation__TouchScaleFactor;
    handInfo3 = [(AXEventRepresentation *)v7 handInfo];
    [handInfo3 setHandPosition:{v10, v13}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    handInfo4 = [(AXEventRepresentation *)v7 handInfo];
    paths = [handInfo4 paths];

    v17 = [paths countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(paths);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          [v21 pathLocation];
          [v21 setPathLocation:{v22 * *&fakeTouchScaleEventRepresentation__TouchScaleFactor, v23 * *&fakeTouchScaleEventRepresentation__TouchScaleFactor}];
        }

        v18 = [paths countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }
  }

  return v7;
}

float __59__AXEventRepresentation_fakeTouchScaleEventRepresentation___block_invoke()
{
  GSMainScreenPixelSize();
  if (v0 == 1280.0)
  {
    GSMainScreenPixelSize();
    LODWORD(v0) = 0;
    if (v1 == 2272.0)
    {
      GSMainScreenScaleFactor();
      *&v0 = 4.0 / *&v0;
      fakeTouchScaleEventRepresentation__TouchScaleFactor = LODWORD(v0);
    }
  }

  return *&v0;
}

- (void)modifyPoints:(id)points
{
  v17 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  handInfo = [(AXEventRepresentation *)self handInfo];
  paths = [handInfo paths];

  v7 = [paths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(paths);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 pathLocation];
        pointsCopy[2](pointsCopy);
        [v11 setPathLocation:?];
      }

      v8 = [paths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)neuterUpdates
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  handInfo = [(AXEventRepresentation *)self handInfo];
  paths = [handInfo paths];

  v5 = [paths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(paths);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setDidUpdateMask:0];
        [v9 setWillUpdateMask:0];
      }

      v6 = [paths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(AXEventRepresentation *)self setGenerationCount:0];
  [(AXEventRepresentation *)self setDidUpdateMask:0];
  [(AXEventRepresentation *)self setWillUpdateMask:0];
}

- (id)denormalizedEventRepresentation:(BOOL)representation descale:(BOOL)descale
{
  descaleCopy = descale;
  v22 = *MEMORY[0x1E69E9840];
  if (representation)
  {
    selfCopy = [(AXEventRepresentation *)self copy];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  handInfo = [(AXEventRepresentation *)selfCopy handInfo];
  pathsIncludingMayBeginEvents = [handInfo pathsIncludingMayBeginEvents];

  v9 = [pathsIncludingMayBeginEvents countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(pathsIncludingMayBeginEvents);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 pathLocation];
        [v13 setPathLocation:{AXDenormalizePoint(descaleCopy, v14, v15)}];
      }

      v10 = [pathsIncludingMayBeginEvents countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v6;
}

- (__IOHIDEvent)_newIOSMACPointerRef
{
  [(AXEventRepresentation *)self HIDTime];
  iosmacPointerInfo = [(AXEventRepresentation *)self iosmacPointerInfo];
  [iosmacPointerInfo location];
  iosmacPointerInfo2 = [(AXEventRepresentation *)self iosmacPointerInfo];
  [iosmacPointerInfo2 location];
  iosmacPointerInfo3 = [(AXEventRepresentation *)self iosmacPointerInfo];
  [iosmacPointerInfo3 pressed];
  MouseEvent = IOHIDEventCreateMouseEvent();

  if ([(AXEventRepresentation *)self contextId])
  {
    [(AXEventRepresentation *)self contextId];
    BKSHIDEventSetSimpleInfo();
  }

  return MouseEvent;
}

- (__IOHIDEvent)_newHandHIDEventRef
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  eventType = [handInfo eventType];

  if (eventType <= 5)
  {
    if (eventType == 1)
    {
      AXDeviceHasHomeButton();
      handInfo2 = [(AXEventRepresentation *)self handInfo];
      pathsIncludingMayBeginEvents = [handInfo2 pathsIncludingMayBeginEvents];
      firstObject = [pathsIncludingMayBeginEvents firstObject];

      if (firstObject)
      {
        [firstObject pathLocation];
        v8 = [(AXEventRepresentation *)self screenEdgeForPoint:?];
      }

      else
      {
        v8 = 0;
      }

      [objc_opt_class() setSwipeFromEdge:v8];
    }
  }

  else if (eventType == 6)
  {
    AXDeviceHasHomeButton();
  }

  [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  if (![(AXEventRepresentation *)self isGeneratedEvent])
  {
    handInfo3 = [(AXEventRepresentation *)self handInfo];
    [handInfo3 handEventMask];
  }

  v41 = (eventType < 0xC) & (0x826u >> eventType);
  if ([(AXEventRepresentation *)self isGeneratedEvent])
  {
    handInfo4 = [(AXEventRepresentation *)self handInfo];
    [handInfo4 additionalHandEventFlagsForGeneratedEvents];
  }

  swipeFromEdge = [objc_opt_class() swipeFromEdge];
  _eventMasksForEdgeSwipe(swipeFromEdge);
  handInfo5 = [(AXEventRepresentation *)self handInfo];
  [handInfo5 handIndex];
  handInfo6 = [(AXEventRepresentation *)self handInfo];
  [handInfo6 handIdentity];
  handInfo7 = [(AXEventRepresentation *)self handInfo];
  [handInfo7 handPosition];
  handInfo8 = [(AXEventRepresentation *)self handInfo];
  [handInfo8 handPosition];
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();

  if (eventType <= 0xB && ((1 << eventType) & 0x826) != 0)
  {
    IOHIDEventSetIntegerValue();
  }

  [(AXEventRepresentation *)self generationCount];
  IOHIDEventSetIntegerValue();
  [(AXEventRepresentation *)self willUpdateMask];
  IOHIDEventSetIntegerValue();
  [(AXEventRepresentation *)self didUpdateMask];
  IOHIDEventSetIntegerValue();
  handInfo9 = [(AXEventRepresentation *)self handInfo];
  pathsIncludingMayBeginEvents2 = [handInfo9 pathsIncludingMayBeginEvents];

  v40 = pathsIncludingMayBeginEvents2;
  v39 = [pathsIncludingMayBeginEvents2 count];
  if (v39 >= 1)
  {
    v19 = 0;
    v38 = DigitizerEvent;
    do
    {
      v20 = [v40 objectAtIndex:v19];
      [v20 pathLocation];
      if (![(AXEventRepresentation *)self isGeneratedEvent])
      {
        [v20 pathEventMask];
      }

      if ([(AXEventRepresentation *)self isGeneratedEvent])
      {
        handInfo10 = [(AXEventRepresentation *)self handInfo];
        [handInfo10 additionalHandEventFlagsForGeneratedEvents];
      }

      v22 = v41;
      if (![(AXEventRepresentation *)self isGeneratedEvent])
      {
        pathProximity = [v20 pathProximity];
        [v20 pathProximity];
        v22 = (pathProximity >> 1) & 1;
      }

      swipeFromEdge2 = [objc_opt_class() swipeFromEdge];
      _eventMasksForEdgeSwipe(swipeFromEdge2);
      transducerType = [v20 transducerType];
      [v20 pathIndex];
      [v20 pathIdentity];
      if (transducerType)
      {
        [v20 pathPressure];
        [v20 pathTwist];
        [v20 pathMinorRadius];
        [v20 pathMajorRadius];
        [v20 pathQuality];
        [v20 pathDensity];
        v37 = 0;
        v36 = v26;
        DigitizerFingerEventWithQuality = IOHIDEventCreateDigitizerFingerEventWithQuality();
      }

      else
      {
        [v20 pathZValue];
        [v20 pathPressure];
        [v20 barrelPressure];
        [v20 pathTwist];
        [v20 altitude];
        [v20 azimuth];
        if (v22)
        {
          v28 = 0x20000;
        }

        else
        {
          v28 = 0;
        }

        LODWORD(v35) = v28;
        DigitizerFingerEventWithQuality = IOHIDEventCreateDigitizerStylusEventWithPolarOrientation();
        [v20 pathQuality];
        IOHIDEventSetFloatValue();
        [v20 pathDensity];
        IOHIDEventSetFloatValue();
        [v20 pathMajorRadius];
        IOHIDEventSetFloatValue();
        [v20 pathMinorRadius];
        IOHIDEventSetFloatValue();
        [v20 phaseBits];
        IOHIDEventSetPhase();
      }

      [v20 roll];
      IOHIDEventSetFloatValue();
      [v20 willUpdateMask];
      IOHIDEventSetIntegerValue();
      [v20 didUpdateMask];
      IOHIDEventSetIntegerValue();
      [v20 orbValue];
      IOHIDEventSetFloatValue();
      [v20 transducerType];
      IOHIDEventSetIntegerValue();
      [v20 orbValue];
      [v20 pathMajorRadiusTolerance];
      IOHIDEventSetFloatValue();
      [(AXEventRepresentation *)self generationCount];
      IOHIDEventSetIntegerValue();
      DigitizerEvent = v38;
      if ([v20 shouldSetTouchFlag])
      {
        IOHIDEventGetIntegerValue();
        IOHIDEventSetIntegerValue();
      }

      if ([(AXEventRepresentation *)self secureName])
      {
        IOHIDEventGetTimeStamp();
        IOHIDEventCreateVendorDefinedEvent();
        IOHIDEventAppendEvent();
      }

      [v20 phaseBits];
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(DigitizerFingerEventWithQuality);

      ++v19;
    }

    while (v39 != v19);
  }

  hIDAttributeData = [(AXEventRepresentation *)self HIDAttributeData];

  if (hIDAttributeData)
  {
    hIDAttributeData2 = [(AXEventRepresentation *)self HIDAttributeData];
    [hIDAttributeData2 bytes];
    hIDAttributeData3 = [(AXEventRepresentation *)self HIDAttributeData];
    [hIDAttributeData3 length];
    IOHIDEventSetAttributeData();
  }

  [(AXEventRepresentation *)self senderID];
  IOHIDEventSetSenderID();
  handInfo11 = [(AXEventRepresentation *)self handInfo];
  eventType2 = [handInfo11 eventType];

  if (eventType2 == 8)
  {
    [(AXEventRepresentation *)self isDisplayIntegrated];
  }

  IOHIDEventSetIntegerValue();

  return DigitizerEvent;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v5 setType:[(AXEventRepresentation *)self type]];
  [(AXEventRepresentation *)v5 setOriginalType:[(AXEventRepresentation *)self originalType]];
  [(AXEventRepresentation *)v5 setSubtype:[(AXEventRepresentation *)self subtype]];
  [(AXEventRepresentation *)self location];
  [(AXEventRepresentation *)v5 setLocation:?];
  [(AXEventRepresentation *)self windowLocation];
  [(AXEventRepresentation *)v5 setWindowLocation:?];
  [(AXEventRepresentation *)v5 setWindow:[(AXEventRepresentation *)self window]];
  [(AXEventRepresentation *)v5 setTime:[(AXEventRepresentation *)self time]];
  [(AXEventRepresentation *)v5 setFlags:[(AXEventRepresentation *)self flags]];
  [(AXEventRepresentation *)v5 setPid:[(AXEventRepresentation *)self pid]];
  handInfo = [(AXEventRepresentation *)self handInfo];
  v7 = [handInfo copyWithZone:zone];

  [(AXEventRepresentation *)v5 setHandInfo:v7];
  data = [(AXEventRepresentation *)self data];
  v9 = [data copyWithZone:zone];

  [(AXEventRepresentation *)v5 setData:v9];
  clientId = [(AXEventRepresentation *)self clientId];
  v11 = [clientId copyWithZone:zone];

  [(AXEventRepresentation *)v5 setClientId:v11];
  [(AXEventRepresentation *)v5 setTaskPort:[(AXEventRepresentation *)self taskPort]];
  [(AXEventRepresentation *)v5 setHIDTime:[(AXEventRepresentation *)self HIDTime]];
  hIDAttributeData = [(AXEventRepresentation *)self HIDAttributeData];
  [(AXEventRepresentation *)v5 setHIDAttributeData:hIDAttributeData];

  [(AXEventRepresentation *)v5 setAdditionalFlags:[(AXEventRepresentation *)self additionalFlags]];
  [(AXEventRepresentation *)v5 setContextId:[(AXEventRepresentation *)self contextId]];
  [(AXEventRepresentation *)v5 setDisplayId:[(AXEventRepresentation *)self displayId]];
  [(AXEventRepresentation *)v5 setSenderID:[(AXEventRepresentation *)self senderID]];
  keyInfo = [(AXEventRepresentation *)self keyInfo];
  v14 = [keyInfo copyWithZone:zone];
  [(AXEventRepresentation *)v5 setKeyInfo:v14];

  accelerometerInfo = [(AXEventRepresentation *)self accelerometerInfo];
  v16 = [accelerometerInfo copyWithZone:zone];
  [(AXEventRepresentation *)v5 setAccelerometerInfo:v16];

  [(AXEventRepresentation *)v5 setIsGeneratedEvent:[(AXEventRepresentation *)self isGeneratedEvent]];
  [(AXEventRepresentation *)v5 setScrollAmount:[(AXEventRepresentation *)self scrollAmount]];
  [(AXEventRepresentation *)v5 setScrollAccelAmount:[(AXEventRepresentation *)self scrollAccelAmount]];
  [(AXEventRepresentation *)v5 setIsDisplayIntegrated:[(AXEventRepresentation *)self isDisplayIntegrated]];
  [(AXEventRepresentation *)v5 setWillUpdateMask:[(AXEventRepresentation *)self willUpdateMask]];
  [(AXEventRepresentation *)v5 setDidUpdateMask:[(AXEventRepresentation *)self didUpdateMask]];
  [(AXEventRepresentation *)v5 setGenerationCount:[(AXEventRepresentation *)self generationCount]];
  [(AXEventRepresentation *)v5 setRedirectEvent:[(AXEventRepresentation *)self isRedirectEvent]];
  [(AXEventRepresentation *)v5 setSystemDrag:[(AXEventRepresentation *)self isSystemDrag]];
  gameControllerInfo = [(AXEventRepresentation *)self gameControllerInfo];
  v18 = [gameControllerInfo copyWithZone:zone];

  [(AXEventRepresentation *)v5 setGameControllerInfo:v18];
  pointerControllerInfo = [(AXEventRepresentation *)self pointerControllerInfo];
  v20 = [pointerControllerInfo copyWithZone:zone];

  [(AXEventRepresentation *)v5 setPointerControllerInfo:v20];
  iosmacPointerInfo = [(AXEventRepresentation *)self iosmacPointerInfo];
  v22 = [iosmacPointerInfo copyWithZone:zone];
  [(AXEventRepresentation *)v5 setIosmacPointerInfo:v22];

  [(AXEventRepresentation *)v5 setCreatorHIDEvent:[(AXEventRepresentation *)self creatorHIDEvent]];
  [(AXEventRepresentation *)v5 setIsBuiltIn:[(AXEventRepresentation *)self isBuiltIn]];
  auxiliaryData = [(AXEventRepresentation *)self auxiliaryData];
  [(AXEventRepresentation *)v5 setAuxiliaryData:auxiliaryData];

  return v5;
}

- (AXEventRepresentation)initWithCoder:(id)coder
{
  v24[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = AXEventRepresentation;
  v5 = [(AXEventRepresentation *)&v23 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt32ForKey:@"type"];
    v5->_originalType = [coderCopy decodeInt32ForKey:@"originalType"];
    v5->_subtype = [coderCopy decodeInt32ForKey:@"subtype"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [v6 getValue:&v5->_location size:16];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"windowLocation"];
    [v7 getValue:&v5->_windowLocation size:16];

    v5->_time = [coderCopy decodeInt64ForKey:@"time"];
    v5->_window = [coderCopy decodeInt64ForKey:@"window"];
    v5->_flags = [coderCopy decodeInt32ForKey:@"flags"];
    v5->_pid = [coderCopy decodeInt32ForKey:@"pid"];
    v5->_redirectEvent = [coderCopy decodeBoolForKey:@"isRedirectEvent"];
    v5->_systemDrag = [coderCopy decodeBoolForKey:@"isSystemDrag"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handInfo"];
    [(AXEventRepresentation *)v5 setHandInfo:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyInfo"];
    [(AXEventRepresentation *)v5 setKeyInfo:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gameInfo"];
    [(AXEventRepresentation *)v5 setGameControllerInfo:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pointerInfo"];
    [(AXEventRepresentation *)v5 setPointerControllerInfo:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerInfo"];
    [(AXEventRepresentation *)v5 setAccelerometerInfo:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(AXEventRepresentation *)v5 setData:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iosmacPointerInfo"];
    [(AXEventRepresentation *)v5 setIosmacPointerInfo:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientId"];
    [(AXEventRepresentation *)v5 setClientId:v15];

    v5->_taskPort = [coderCopy decodeInt32ForKey:@"taskPort"];
    v5->_HIDTime = [coderCopy decodeInt64ForKey:@"HIDTime"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HIDAttributeData"];
    [(AXEventRepresentation *)v5 setHIDAttributeData:v16];

    -[AXEventRepresentation setAdditionalFlags:](v5, "setAdditionalFlags:", [coderCopy decodeInt64ForKey:@"additionalFlags"]);
    v5->_contextId = [coderCopy decodeInt32ForKey:@"contextId"];
    v5->_displayId = [coderCopy decodeInt32ForKey:@"displayId"];
    v5->_senderID = [coderCopy decodeInt64ForKey:@"HIDSenderId"];
    v5->_isBuiltIn = [coderCopy decodeBoolForKey:@"isBuiltIn"];
    v5->_isDisplayIntegrated = [coderCopy decodeBoolForKey:@"isDisplayIntegrated"];
    v5->_generationCount = [coderCopy decodeInt64ForKey:@"generationCount"];
    v5->_willUpdateMask = [coderCopy decodeInt32ForKey:@"willUpdateMask"];
    v5->_didUpdateMask = [coderCopy decodeInt32ForKey:@"didUpdateMask"];
    v5->_isGeneratedEvent = [coderCopy decodeBoolForKey:@"isGeneratedEvent"];
    v5->_scrollAmount = [coderCopy decodeInt64ForKey:@"scrollAmount"];
    v5->_scrollAccelAmount = [coderCopy decodeInt64ForKey:@"scrollAccelAmount"];
    v17 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    v19 = [v17 setWithArray:v18];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"auxiliaryData"];
    auxiliaryData = v5->_auxiliaryData;
    v5->_auxiliaryData = v20;
  }

  return v5;
}

- (void)dealloc
{
  creatorHIDEvent = self->_creatorHIDEvent;
  if (creatorHIDEvent)
  {
    CFRelease(creatorHIDEvent);
    self->_creatorHIDEvent = 0;
  }

  creatorHIDServiceClient = self->_creatorHIDServiceClient;
  if (creatorHIDServiceClient)
  {
    CFRelease(creatorHIDServiceClient);
    self->_creatorHIDServiceClient = 0;
  }

  v5.receiver = self;
  v5.super_class = AXEventRepresentation;
  [(AXEventRepresentation *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt32:type forKey:@"type"];
  [coderCopy encodeInt32:self->_originalType forKey:@"originalType"];
  [coderCopy encodeInt32:self->_subtype forKey:@"subtype"];
  v5 = [MEMORY[0x1E696B098] valueWithBytes:&self->_location objCType:"{CGPoint=dd}"];
  [coderCopy encodeObject:v5 forKey:@"location"];

  v6 = [MEMORY[0x1E696B098] valueWithBytes:&self->_windowLocation objCType:"{CGPoint=dd}"];
  [coderCopy encodeObject:v6 forKey:@"windowLocation"];

  [coderCopy encodeInt64:self->_time forKey:@"time"];
  [coderCopy encodeInt64:self->_window forKey:@"window"];
  [coderCopy encodeInt32:self->_flags forKey:@"flags"];
  [coderCopy encodeInt32:self->_pid forKey:@"pid"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
  [coderCopy encodeObject:self->_handInfo forKey:@"handInfo"];
  [coderCopy encodeObject:self->_gameControllerInfo forKey:@"gameInfo"];
  [coderCopy encodeObject:self->_pointerControllerInfo forKey:@"pointerInfo"];
  [coderCopy encodeObject:self->_keyInfo forKey:@"keyInfo"];
  [coderCopy encodeObject:self->_accelerometerInfo forKey:@"accelerometerInfo"];
  [coderCopy encodeObject:self->_clientId forKey:@"clientId"];
  [coderCopy encodeInt32:self->_taskPort forKey:@"taskPort"];
  [coderCopy encodeInt64:self->_HIDTime forKey:@"HIDTime"];
  [coderCopy encodeObject:self->_HIDAttributeData forKey:@"HIDAttributeData"];
  [coderCopy encodeInt64:self->_additionalFlags forKey:@"additionalFlags"];
  [coderCopy encodeInt32:self->_contextId forKey:@"contextId"];
  [coderCopy encodeInt32:self->_displayId forKey:@"displayId"];
  [coderCopy encodeInt64:self->_senderID forKey:@"HIDSenderId"];
  [coderCopy encodeBool:self->_isBuiltIn forKey:@"isBuiltIn"];
  [coderCopy encodeBool:self->_isDisplayIntegrated forKey:@"isDisplayIntegrated"];
  [coderCopy encodeInt64:self->_generationCount forKey:@"generationCount"];
  [coderCopy encodeInt32:self->_willUpdateMask forKey:@"willUpdateMask"];
  [coderCopy encodeInt32:self->_didUpdateMask forKey:@"didUpdateMask"];
  [coderCopy encodeBool:self->_isGeneratedEvent forKey:@"isGeneratedEvent"];
  [coderCopy encodeInt64:self->_scrollAmount forKey:@"scrollAmount"];
  [coderCopy encodeInt64:self->_scrollAccelAmount forKey:@"scrollAccelAmount"];
  [coderCopy encodeBool:self->_redirectEvent forKey:@"isRedirectEvent"];
  [coderCopy encodeBool:self->_systemDrag forKey:@"isSystemDrag"];
  iosmacPointerInfo = [(AXEventRepresentation *)self iosmacPointerInfo];
  [coderCopy encodeObject:iosmacPointerInfo forKey:@"iosmacPointerInfo"];

  [coderCopy encodeObject:self->_auxiliaryData forKey:@"auxiliaryData"];
}

- (unsigned)firstPathContextId
{
  if ([(AXEventRepresentation *)self type]!= 3001)
  {
    return 0;
  }

  handInfo = [(AXEventRepresentation *)self handInfo];
  paths = [handInfo paths];
  firstPath = [paths firstPath];

  LODWORD(handInfo) = [firstPath pathWindowContextID];
  return handInfo;
}

- (id)accessibilityEventRepresentationTabularDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p>\n  Type:             %u (orig:%u)\n  Subtype:          %d\n  Location:         x:%f y:%f\n  Window Location:  x:%f y:%f\n  Window:           %p\n  Flags:            %d\n  PID:              %d\n  Time:             %llu\n  HIDTime:          %llu\n  Data:             %@\n  Task Port:        %d\n  client ID:        %@\n  context ID:       %u\n", v5, self, self->_type, self->_originalType, self->_subtype, *&self->_location.x, *&self->_location.y, *&self->_windowLocation.x, *&self->_windowLocation.y, self->_window, self->_flags, self->_pid, self->_time, self->_HIDTime, self->_data, self->_taskPort, self->_clientId, self->_contextId];

  handInfo = [(AXEventRepresentation *)self handInfo];

  if (handInfo)
  {
    handInfo2 = [(AXEventRepresentation *)self handInfo];
    accessibilityEventRepresentationTabularDescription = [handInfo2 accessibilityEventRepresentationTabularDescription];
    [v6 appendString:accessibilityEventRepresentationTabularDescription];
  }

  gameControllerInfo = [(AXEventRepresentation *)self gameControllerInfo];

  if (gameControllerInfo)
  {
    gameControllerInfo2 = [(AXEventRepresentation *)self gameControllerInfo];
    accessibilityEventRepresentationTabularDescription2 = [gameControllerInfo2 accessibilityEventRepresentationTabularDescription];
    [v6 appendString:accessibilityEventRepresentationTabularDescription2];
  }

  pointerControllerInfo = [(AXEventRepresentation *)self pointerControllerInfo];

  if (pointerControllerInfo)
  {
    pointerControllerInfo2 = [(AXEventRepresentation *)self pointerControllerInfo];
    accessibilityEventRepresentationTabularDescription3 = [pointerControllerInfo2 accessibilityEventRepresentationTabularDescription];
    [v6 appendString:accessibilityEventRepresentationTabularDescription3];
  }

  return v6;
}

- (NSString)description
{
  v20 = MEMORY[0x1E696AD60];
  v21.receiver = self;
  v21.super_class = AXEventRepresentation;
  v3 = [(AXEventRepresentation *)&v21 description];
  location = self->_location;
  x = self->_windowLocation.x;
  y = self->_windowLocation.y;
  time = self->_time;
  clientId = self->_clientId;
  HIDTime = self->_HIDTime;
  window = self->_window;
  type = self->_type;
  flags = self->_flags;
  subtype = self->_subtype;
  taskPort = self->_taskPort;
  pid = self->_pid;
  contextId = self->_contextId;
  _senderNameForID = [(AXEventRepresentation *)self _senderNameForID];
  v14 = [v20 stringWithFormat:@"%@. type:%u subtype:%d loc:[x:%f y:%f] windowLoc:[x:%f y:%f] window:%p flags:%d pid:%d time:%llu HIDTime:%llu taskPort:%d client:%@ ctxtID:%u sender:%@ data:[%lu bytes]", v3, type, subtype, location, *&x, *&y, window, flags, pid, time, HIDTime, taskPort, clientId, contextId, _senderNameForID, -[NSData length](self->_data, "length")];

  if (self->_accessibilityData)
  {
    [v14 appendFormat:@"\nAXData: %@", self->_accessibilityData];
  }

  if (self->_handInfo)
  {
    [v14 appendFormat:@"\nHand Info: %@", self->_handInfo];
  }

  if (self->_keyInfo)
  {
    [v14 appendFormat:@"\nKey Info: %@", self->_keyInfo];
  }

  return v14;
}

- (id)_senderNameForID
{
  senderID = [(AXEventRepresentation *)self senderID];
  if (senderID + 0x7FFFFFF7E8CE6C8FLL >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (ID:0x%04llx)", -[AXEventRepresentation senderID](self, "senderID")];
  }

  else
  {
    v4 = off_1E71EC0C8[senderID - 0x817319371];
  }

  return v4;
}

- (unint64_t)fingerCount
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  currentFingerCount = [handInfo currentFingerCount];

  return currentFingerCount;
}

- (BOOL)isTouchDown
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  v3 = [handInfo eventType] == 1;

  return v3;
}

- (BOOL)isMove
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  v3 = [handInfo eventType] == 2;

  return v3;
}

- (BOOL)isChordChange
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  v3 = [handInfo eventType] == 5;

  return v3;
}

- (BOOL)isLift
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  v3 = [handInfo eventType] == 6;

  return v3;
}

- (BOOL)isInRange
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  v3 = [handInfo eventType] == 9;

  return v3;
}

- (BOOL)isInRangeLift
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  v3 = [handInfo eventType] == 10;

  return v3;
}

- (BOOL)isCancel
{
  handInfo = [(AXEventRepresentation *)self handInfo];
  v3 = [handInfo eventType] == 8;

  return v3;
}

- (unsigned)screenEdgeForPoint:(CGPoint)point
{
  if (point.x < 0.01)
  {
    return 1;
  }

  if (point.x > 0.99)
  {
    return 2;
  }

  if (point.y < 0.01)
  {
    return 3;
  }

  if (point.y <= 0.99)
  {
    return 0;
  }

  return 4;
}

- (unsigned)originalType
{
  if (self->_originalType)
  {
    return self->_originalType;
  }

  else
  {
    return [(AXEventRepresentation *)self type];
  }
}

- (void)applyAccessibilityDataToCreatorHIDEvent
{
  creatorHIDEvent = [(AXEventRepresentation *)self creatorHIDEvent];
  if (creatorHIDEvent)
  {

    [(AXEventRepresentation *)self _applyAccessibilityDataToRealEvent:creatorHIDEvent];
  }
}

+ (BOOL)_HIDEventIsAccessibilityEvent:(__IOHIDEvent *)event
{
  if (!event)
  {
    return 0;
  }

  if (IOHIDEventGetType() == 1)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v4 = IOHIDEventGetIntegerValue();
    if (IntegerValue == 65280 && v4 == 34)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)_HIDEventIsAccessibilityEvent:(__IOHIDEvent *)event
{
  v4 = objc_opt_class();

  return [v4 _HIDEventIsAccessibilityEvent:event];
}

- (__IOHIDEvent)_accessibilityEventFromRealEvent:(__IOHIDEvent *)event
{
  ValueAtIndex = event;
  if (event && ![(AXEventRepresentation *)self _HIDEventIsAccessibilityEvent:event])
  {
    Children = IOHIDEventGetChildren();
    if (Children && (v6 = Children, Count = CFArrayGetCount(Children), Count >= 1))
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        if ([(AXEventRepresentation *)self _HIDEventIsAccessibilityEvent:ValueAtIndex])
        {
          break;
        }

        if (v8 == ++v9)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

- (void)_applyAccessibilityDataToRealEvent:(__IOHIDEvent *)event
{
  accessibilityData = [(AXEventRepresentation *)self accessibilityData];
  if (event && accessibilityData)
  {
    v7 = accessibilityData;
    if ([(AXEventRepresentation *)self _HIDEventIsAccessibilityEvent:event]|| [(AXEventRepresentation *)self _accessibilityEventFromRealEvent:event])
    {
      _AXAssert();
LABEL_6:
      accessibilityData = v7;
      goto LABEL_7;
    }

    IOHIDEventGetTimeStamp();
    [v7 dataBytes];
    [v7 dataLength];
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventAppendEvent();
    accessibilityData = v7;
    if (VendorDefinedEvent)
    {
      CFRelease(VendorDefinedEvent);
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (id)_accessibilityDataFromRealEvent:(__IOHIDEvent *)event
{
  if (event)
  {
    v4 = [(AXEventRepresentation *)self _accessibilityEventFromRealEvent:?];
    if (v4)
    {
      DataValue = IOHIDEventGetDataValue();
      if (DataValue)
      {
        v4 = [AXEventData dataWithBytes:DataValue length:IOHIDEventGetIntegerValue()];
      }

      else
      {
        _AXLogWithFacility();
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)incrementTouchCounter
{
  touchCounter = [self touchCounter];
  if ((touchCounter + 1) > 1)
  {
    v4 = (touchCounter + 1);
  }

  else
  {
    v4 = 1;
  }

  [self setTouchCounter:v4];
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)windowLocation
{
  x = self->_windowLocation.x;
  y = self->_windowLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end