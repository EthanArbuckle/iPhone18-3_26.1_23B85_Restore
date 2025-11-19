@interface AXEventRepresentation
+ (AXEventRepresentation)representationWithData:(id)a3;
+ (AXEventRepresentation)representationWithHIDEvent:(__IOHIDEvent *)a3 serviceClient:(__IOHIDServiceClient *)a4 hidStreamIdentifier:(id)a5 clientID:(id)a6 taskPort:(unsigned int)a7;
+ (AXEventRepresentation)representationWithLocation:(CGPoint)a3 windowLocation:(CGPoint)a4 handInfo:(id)a5;
+ (AXEventRepresentation)representationWithType:(unsigned int)a3 subtype:(int)a4 time:(unint64_t)a5 location:(CGPoint)a6 windowLocation:(CGPoint)a7 handInfo:(id)a8;
+ (BOOL)_HIDEventIsAccessibilityEvent:(__IOHIDEvent *)a3;
+ (id)_digitizerRepresentation:(__IOHIDEvent *)a3 hidStreamIdentifier:(id)a4;
+ (id)_gameControllerEvent:(__IOHIDEvent *)a3;
+ (id)_keyboardButtonEvent:(__IOHIDEvent *)a3;
+ (id)_pointerControllerEvent:(__IOHIDEvent *)a3 hidStreamIdentifier:(id)a4 serviceClient:(__IOHIDServiceClient *)a5;
+ (id)_vendorDefinedAccessibilityEvent:(__IOHIDEvent *)a3;
+ (id)_wheelEvent:(__IOHIDEvent *)a3;
+ (id)accelerometerRepresentation:(id)a3;
+ (id)accessibilityEventRepresentationWithSender:(int64_t)a3 usagePage:(int64_t)a4 usage:(int64_t)a5 modifierFlags:(int64_t)a6 eventValue1:(float)a7 eventValue2:(float)a8;
+ (id)buttonRepresentationWithType:(unsigned int)a3;
+ (id)cancelEventForPathIndexMask:(unsigned int)a3;
+ (id)gestureRepresentationWithHandType:(unsigned int)a3 locations:(id)a4;
+ (id)iosmacPointerRepresentationWithTypeWithPointerInfo:(id)a3;
+ (id)keyRepresentationWithType:(unsigned int)a3;
+ (id)touchRepresentationWithHandType:(unsigned int)a3 location:(CGPoint)a4;
+ (void)_appendKeyInfoToMediaKey:(id)a3 usage:(int64_t)a4 downEvent:(BOOL)a5;
+ (void)incrementTouchCounter;
- (AXEventRepresentation)initWithCoder:(id)a3;
- (BOOL)_HIDEventIsAccessibilityEvent:(__IOHIDEvent *)a3;
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
- (__IOHIDEvent)_accessibilityEventFromRealEvent:(__IOHIDEvent *)a3;
- (__IOHIDEvent)_newAccelerometerHIDEventRef;
- (__IOHIDEvent)_newAccessibilityHIDEventRef;
- (__IOHIDEvent)_newButtonHIDEventRefWithType:(unsigned int)a3;
- (__IOHIDEvent)_newHandHIDEventRef;
- (__IOHIDEvent)_newIOSMACPointerRef;
- (__IOHIDEvent)_newKeyboardHIDEventRef;
- (__IOHIDEvent)_newScrollHIDEventRef;
- (__IOHIDEvent)_newTostadaButtonHIDEventRefWithType:(unsigned int)a3;
- (__IOHIDEvent)newHIDEventRef;
- (id)_accessibilityDataFromRealEvent:(__IOHIDEvent *)a3;
- (id)_senderNameForID;
- (id)accessibilityEventRepresentationTabularDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)denormalizedEventRepresentation:(BOOL)a3 descale:(BOOL)a4;
- (id)fakeTouchScaleEventRepresentation:(BOOL)a3;
- (id)normalizedEventRepresentation:(BOOL)a3 scale:(BOOL)a4;
- (unint64_t)_machTimeForHIDEventRef;
- (unint64_t)fingerCount;
- (unsigned)firstPathContextId;
- (unsigned)originalType;
- (unsigned)pathIndexMask;
- (unsigned)screenEdgeForPoint:(CGPoint)a3;
- (void)_applyAccessibilityDataToRealEvent:(__IOHIDEvent *)a3;
- (void)applyAccessibilityDataToCreatorHIDEvent;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)modifyPoints:(id)a3;
- (void)neuterUpdates;
@end

@implementation AXEventRepresentation

+ (AXEventRepresentation)representationWithData:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v5 = [v3 secureUnarchiveData:v4 withExpectedClass:objc_opt_class() otherAllowedClasses:0];

  return v5;
}

+ (AXEventRepresentation)representationWithType:(unsigned int)a3 subtype:(int)a4 time:(unint64_t)a5 location:(CGPoint)a6 windowLocation:(CGPoint)a7 handInfo:(id)a8
{
  y = a7.y;
  x = a7.x;
  v10 = a6.y;
  v11 = a6.x;
  v13 = *&a4;
  v14 = *&a3;
  v15 = a8;
  v16 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v16 setType:v14];
  [(AXEventRepresentation *)v16 setSubtype:v13];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v16 setTime:(*&_AXGSEventConvertFromMachTime___scale * a5)];
  [(AXEventRepresentation *)v16 setLocation:v11, v10];
  [(AXEventRepresentation *)v16 setWindowLocation:x, y];
  [(AXEventRepresentation *)v16 setHandInfo:v15];

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
  v4 = [(AXEventRepresentation *)self handInfo];
  v5 = [v4 paths];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 |= 1 << [*(*(&v12 + 1) + 8 * i) pathIndex];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)cancelEventForPathIndexMask:(unsigned int)a3
{
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:3001];
  v5 = objc_alloc_init(AXEventHandInfoRepresentation);
  [(AXEventRepresentation *)v4 setHandInfo:v5];

  v6 = [(AXEventRepresentation *)v4 handInfo];
  [v6 setHandEventMask:128];

  v7 = [(AXEventRepresentation *)v4 handInfo];
  [v7 setEventType:8];

  [(AXEventRepresentation *)v4 setIsDisplayIntegrated:1];
  v8 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 32; ++i)
  {
    if ((a3 >> i))
    {
      v10 = objc_alloc_init(AXEventPathInfoRepresentation);
      [(AXEventPathInfoRepresentation *)v10 setPathIndex:i];
      [(AXEventPathInfoRepresentation *)v10 setPathEventMask:128];
      [v8 addObject:v10];
    }
  }

  v11 = [(AXEventRepresentation *)v4 handInfo];
  [v11 setPaths:v8];

  return v4;
}

+ (id)_digitizerRepresentation:(__IOHIDEvent *)a3 hidStreamIdentifier:(id)a4
{
  v129 = *MEMORY[0x1E69E9840];
  v116 = a4;
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

  v17 = [(AXEventRepresentation *)v5 handInfo];
  [v17 setSystemGesturePossible:1];

  v18 = [(AXEventRepresentation *)v5 handInfo];
  [v18 setHandIdentity:v7];

  v19 = [(AXEventRepresentation *)v5 handInfo];
  [v19 setHandIndex:v8];

  v20 = [(AXEventRepresentation *)v5 handInfo];
  [v20 setHandEventMask:IntegerValue];

  IOHIDEventGetFloatValue();
  v22 = v21;
  IOHIDEventGetFloatValue();
  v24 = v23;
  v25 = [(AXEventRepresentation *)v5 handInfo];
  [v25 setHandPosition:{v22, v24}];

  v26 = &unk_1EA9B7000;
  if (IOHIDEventGetAttributeDataLength() >= 1)
  {
    v27 = BKSHIDEventGetDigitizerAttributes();
    v28 = v27;
    if (v27)
    {
      v29 = [v27 systemGesturesPossible];
      v30 = [(AXEventRepresentation *)v5 handInfo];
      [v30 setSystemGesturePossible:v29];

      v26 = &unk_1EA9B7000;
      [(AXEventRepresentation *)v5 setContextId:_ContextIDFromEvent(a3)];
    }
  }

  v111 = v11;
  v112 = a3;
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

        v44 = [(AXEventPathInfoRepresentation *)v36 pathIndex];
        v45 = v116;
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
          v49 = v47;
        }

        else
        {
          v49 = [MEMORY[0x1E695DF90] dictionary];
        }

        v50 = v49;
        v33 = v122 | v41;

        v51 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:Phase];
        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v44];
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

  v66 = [(AXEventRepresentation *)v5 handInfo];
  [v66 setPathsIncludingMayBeginEvents:v31];

  v67 = v112;
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
  v78 = v116;
  [v77 lock];
  v79 = [HIDStreamIdentifierTouchCounts objectForKey:v78];

  v80 = v26;
  v81 = [v79 integerValue];

  [v80[369] unlock];
  v82 = [(AXEventRepresentation *)v5 handInfo];
  [v82 setCurrentFingerCount:v34];

  v83 = [(AXEventRepresentation *)v5 handInfo];
  v84 = v83;
  if (v81 <= 0)
  {
    v85 = v119;
  }

  else
  {
    v85 = v81;
  }

  [v83 setInitialFingerCount:v85];

  v86 = v78;
  [v80[369] lock];
  v87 = [HIDStreamIdentifierPhasesForTouches objectForKey:v86];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v88 = [v87 allValues];
  v89 = [v88 countByEnumeratingWithState:&v124 objects:v128 count:16];
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
          objc_enumerationMutation(v88);
        }

        if ([*(*(&v124 + 1) + 8 * i) unsignedIntValue] != 8)
        {
          ++v92;
        }
      }

      v90 = [v88 countByEnumeratingWithState:&v124 objects:v128 count:16];
    }

    while (v90);
    v5 = v115;
    v34 = v91;
    v67 = v112;
  }

  else
  {
    v92 = 0;
  }

  [HIDStreamLock unlock];
  v95 = [(AXEventRepresentation *)v5 handInfo];
  [v95 setLifetimeFingerCount:v92];

  if (v110 < 0)
  {
    v99 = [(AXEventRepresentation *)v5 handInfo];
    [v99 setEventType:8];

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
      v98 = [(AXEventRepresentation *)v5 handInfo];
      [v98 setEventType:v97];

      goto LABEL_97;
    }

    if (v34)
    {
      v100 = v81 == v34;
    }

    else
    {
      v100 = 1;
    }

    v102 = !v100 && v81 > 0;
    if ((v102 & v123) == 1)
    {
      v103 = [(AXEventRepresentation *)v5 handInfo];
      v104 = v103;
      v105 = 5;
    }

    else if (!v34 || v81)
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
        v106 = v81 == 0;
      }

      v107 = v106;
      if ((v107 | v113))
      {
        if (((v34 == 0) & (v118 ^ 1)) != 0)
        {
          if (v113)
          {
            v103 = [(AXEventRepresentation *)v5 handInfo];
            v104 = v103;
            v105 = 9;
          }

          else if (v81)
          {
            _AXAssert();
            v103 = [(AXEventRepresentation *)v5 handInfo:v67];
            v104 = v103;
            v105 = 0;
          }

          else
          {
            v103 = [(AXEventRepresentation *)v5 handInfo];
            v104 = v103;
            v105 = 10;
          }
        }

        else
        {
          v103 = [(AXEventRepresentation *)v5 handInfo];
          v104 = v103;
          v105 = 2;
        }
      }

      else
      {
        v103 = [(AXEventRepresentation *)v5 handInfo];
        v104 = v103;
        v105 = 6;
      }
    }

    else
    {
      v103 = [(AXEventRepresentation *)v5 handInfo];
      v104 = v103;
      v105 = 1;
    }

    [v103 setEventType:v105];
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

  v3 = [(AXEventRepresentation *)self didUpdateMask];
  v4 = [(AXEventRepresentation *)self handInfo];
  v5 = [v4 paths];

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [v5 count];
      v6 = v7 < v8;
      if (v7 >= v8)
      {
        break;
      }

      v9 = [v5 objectAtIndex:v7];
      v10 = [v9 didUpdateMask];

      ++v7;
    }

    while (!v10);
  }

  return v6;
}

- (BOOL)willBeUpdated
{
  if (![(AXEventRepresentation *)self generationCount])
  {
    return 0;
  }

  v3 = [(AXEventRepresentation *)self willUpdateMask];
  v4 = [(AXEventRepresentation *)self handInfo];
  v5 = [v4 paths];

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [v5 count];
      v6 = v7 < v8;
      if (v7 >= v8)
      {
        break;
      }

      v9 = [v5 objectAtIndex:v7];
      v10 = [v9 willUpdateMask];

      ++v7;
    }

    while (!v10);
  }

  return v6;
}

+ (void)_appendKeyInfoToMediaKey:(id)a3 usage:(int64_t)a4 downEvent:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v7 = objc_alloc_init(AXEventKeyInfoRepresentation);
  if (a4 <= 225)
  {
    if (a4 > 183)
    {
      v8 = v10;
      if (a4 == 184)
      {
        goto LABEL_18;
      }

      if (a4 == 205)
      {
        a4 = 65;
        goto LABEL_18;
      }
    }

    else
    {
      v8 = v10;
      if (a4 == 179)
      {
        a4 = 66;
        goto LABEL_18;
      }

      if (a4 == 180)
      {
        a4 = 64;
LABEL_18:
        [v10 setOriginalType:{objc_msgSend(v8, "type")}];
        if (v5)
        {
          v9 = 10;
        }

        else
        {
          v9 = 11;
        }

        [v10 setType:v9];
        goto LABEL_22;
      }
    }

LABEL_15:
    a4 = 0;
    goto LABEL_18;
  }

  if (a4 > 233)
  {
    v8 = v10;
    if (a4 == 234)
    {
      a4 = 68;
    }

    else if (a4 != 669)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = v10;
    if (a4 == 226)
    {
      a4 = 67;
      goto LABEL_18;
    }

    if (a4 != 233)
    {
      goto LABEL_15;
    }

    a4 = 69;
  }

LABEL_22:
  [(AXEventKeyInfoRepresentation *)v7 setUsagePage:7];
  [(AXEventKeyInfoRepresentation *)v7 setKeyCode:a4];
  [(AXEventKeyInfoRepresentation *)v7 setKeyDown:v5];
  [v10 setKeyInfo:v7];
}

+ (id)_keyboardButtonEvent:(__IOHIDEvent *)a3
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
          [a1 _appendKeyInfoToMediaKey:v5 usage:3 downEvent:v9 != 0];
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
            v23 = a1;
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
            v23 = a1;
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
            v23 = a1;
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
            v23 = a1;
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
            v23 = a1;
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
            v23 = a1;
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
        v23 = a1;
        v24 = v5;
        v25 = 234;
LABEL_159:
        [v23 _appendKeyInfoToMediaKey:v24 usage:v25 downEvent:v21];
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
        v23 = a1;
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
  [(AXEventRepresentation *)v5 setContextId:_ContextIDFromEvent(a3)];

  return v5;
}

+ (id)_wheelEvent:(__IOHIDEvent *)a3
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

+ (id)_gameControllerEvent:(__IOHIDEvent *)a3
{
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:1300];
  v5 = [AXGameControllerEvent axGameControllerInfoRepresentationFromEvent:a3];
  [(AXEventRepresentation *)v4 setGameControllerInfo:v5];

  return v4;
}

+ (id)_pointerControllerEvent:(__IOHIDEvent *)a3 hidStreamIdentifier:(id)a4 serviceClient:(__IOHIDServiceClient *)a5
{
  v7 = a4;
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
          v17 = [a1 representationWithHIDEvent:ValueAtIndex hidStreamIdentifier:v7];
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

      v17 = [a1 representationWithHIDEvent:ValueAtIndex hidStreamIdentifier:v7];
      [(AXEventPointerInfoRepresentation *)v9 setTrackpadHandEvent:v17];
      goto LABEL_13;
    }
  }

LABEL_15:
  [(AXEventRepresentation *)v8 setContextId:_ContextIDFromEvent(a3)];

  return v8;
}

+ (id)_vendorDefinedAccessibilityEvent:(__IOHIDEvent *)a3
{
  if ([a1 _HIDEventIsAccessibilityEvent:a3])
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

+ (AXEventRepresentation)representationWithLocation:(CGPoint)a3 windowLocation:(CGPoint)a4 handInfo:(id)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v9 = a5;
  v10 = [AXEventRepresentation representationWithType:0 subtype:0 time:mach_absolute_time() location:v9 windowLocation:v8 handInfo:v7, x, y];

  return v10;
}

+ (AXEventRepresentation)representationWithHIDEvent:(__IOHIDEvent *)a3 serviceClient:(__IOHIDServiceClient *)a4 hidStreamIdentifier:(id)a5 clientID:(id)a6 taskPort:(unsigned int)a7
{
  v7 = *&a7;
  v44 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = 0;
LABEL_27:
    if (!v15)
    {
      v24 = [MEMORY[0x1E69887C0] sharedInstance];
      v25 = [v24 ignoreLogging];

      if ((v25 & 1) == 0)
      {
        v26 = [MEMORY[0x1E69887C0] identifier];
        v27 = AXLoggerForFacility();

        v28 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = AXColorizeFormatLog();
          v40 = a3;
          v41 = v12;
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
        v17 = [a1 _gameControllerEvent:a3];
        break;
      case 17:
        v17 = [a1 _pointerControllerEvent:a3 hidStreamIdentifier:v12 serviceClient:a4];
        break;
      case 11:
        v17 = [a1 _digitizerRepresentation:a3 hidStreamIdentifier:v12];
        break;
      default:
        goto LABEL_19;
    }
  }

  else
  {
    if (Type == 1)
    {
      v15 = [a1 _vendorDefinedAccessibilityEvent:a3];
      v16 = v15 == 0;
      goto LABEL_19;
    }

    if (Type == 3)
    {
      v15 = [a1 _keyboardButtonEvent:a3];
      if (v15)
      {
        v18 = [a1 _gameKeyboardControllerEvent:a3];
        [v15 setGameControllerInfo:v18];
      }

      goto LABEL_18;
    }

    if (Type != 6)
    {
      goto LABEL_19;
    }

    v17 = [a1 _wheelEvent:a3];
  }

  v15 = v17;
LABEL_18:
  v16 = 0;
LABEL_19:
  [v15 setClientId:v13];
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
  v22 = [v15 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [v15 setTime:(*&_AXGSEventConvertFromMachTime___scale * v22)];
  [v15 setIsGeneratedEvent:0];
  [v15 setCreatorHIDEvent:a3];
  [v15 setCreatorHIDServiceClient:a4];
  v23 = [v15 _accessibilityDataFromRealEvent:a3];
  [v15 setAccessibilityData:v23];

  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_34:
  v38 = Children && (v32 = Children, CFArrayGetCount(Children) >= 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v32, 0), _GetSubEventInfoFromDigitizerEventForPathEvent(a3, ValueAtIndex), v34 = Children = IOHIDEventGetChildren();
  [v15 setSystemDrag:{v38, v40, v41}];

  return v15;
}

+ (id)accelerometerRepresentation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:23];
  [(AXEventRepresentation *)v4 setHIDTime:mach_absolute_time()];
  v5 = [(AXEventRepresentation *)v4 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v4 setTime:(*&_AXGSEventConvertFromMachTime___scale * v5)];
  [(AXEventRepresentation *)v4 setAccelerometerInfo:v3];

  return v4;
}

+ (id)keyRepresentationWithType:(unsigned int)a3
{
  v3 = *&a3;
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:v3];
  [(AXEventRepresentation *)v4 setHIDTime:mach_absolute_time()];
  v5 = [(AXEventRepresentation *)v4 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v4 setTime:(*&_AXGSEventConvertFromMachTime___scale * v5)];
  v6 = objc_alloc_init(AXEventKeyInfoRepresentation);
  [(AXEventKeyInfoRepresentation *)v6 setKeyDown:v3 == 10];
  [(AXEventKeyInfoRepresentation *)v6 setUsagePage:7];
  [(AXEventRepresentation *)v4 setKeyInfo:v6];
  [(AXEventRepresentation *)v4 setIsGeneratedEvent:1];

  return v4;
}

+ (id)buttonRepresentationWithType:(unsigned int)a3
{
  v3 = *&a3;
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:v3];
  [(AXEventRepresentation *)v4 setHIDTime:mach_absolute_time()];
  v5 = [(AXEventRepresentation *)v4 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v4 setTime:(*&_AXGSEventConvertFromMachTime___scale * v5)];
  [(AXEventRepresentation *)v4 setIsGeneratedEvent:1];

  return v4;
}

+ (id)iosmacPointerRepresentationWithTypeWithPointerInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v4 setType:3201];
  [(AXEventRepresentation *)v4 setHIDTime:mach_absolute_time()];
  v5 = [(AXEventRepresentation *)v4 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v4 setTime:(*&_AXGSEventConvertFromMachTime___scale * v5)];
  [(AXEventRepresentation *)v4 setIsGeneratedEvent:1];
  [(AXEventRepresentation *)v4 setIosmacPointerInfo:v3];

  return v4;
}

+ (id)gestureRepresentationWithHandType:(unsigned int)a3 locations:(id)a4
{
  v4 = *&a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(AXEventHandInfoRepresentation);
  [(AXEventHandInfoRepresentation *)v6 setEventType:v4];
  v7 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
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
        [v7 addObject:v14];
        ++v11;
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  [(AXEventHandInfoRepresentation *)v6 setPaths:v7];
  v15 = mach_absolute_time();
  v16 = [obj firstObject];
  [v16 axCGPointValue];
  v18 = v17;
  v20 = v19;
  v21 = [obj firstObject];
  [v21 axCGPointValue];
  v24 = [AXEventRepresentation representationWithType:3001 subtype:0 time:v15 location:v6 windowLocation:v18 handInfo:v20, v22, v23];

  return v24;
}

+ (id)touchRepresentationWithHandType:(unsigned int)a3 location:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = *&a3;
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

+ (id)accessibilityEventRepresentationWithSender:(int64_t)a3 usagePage:(int64_t)a4 usage:(int64_t)a5 modifierFlags:(int64_t)a6 eventValue1:(float)a7 eventValue2:(float)a8
{
  v14 = objc_alloc_init(AXEventRepresentation);
  [(AXEventRepresentation *)v14 setType:5000];
  [(AXEventRepresentation *)v14 setHIDTime:mach_absolute_time()];
  v15 = [(AXEventRepresentation *)v14 HIDTime];
  if (_AXGSEventConvertFromMachTime_onceToken != -1)
  {
    +[AXEventRepresentation representationWithType:subtype:time:location:windowLocation:handInfo:];
  }

  [(AXEventRepresentation *)v14 setTime:(*&_AXGSEventConvertFromMachTime___scale * v15)];
  [(AXEventRepresentation *)v14 setIsGeneratedEvent:1];
  *&v16 = a7;
  *&v17 = a8;
  v18 = [AXEventData dataWithSender:a3 page:a4 usage:a5 modifierFlags:a6 eventValue1:v16 eventValue2:v17];
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
  v3 = [(AXEventRepresentation *)self originalType];
  v4 = 0;
  if (v3 <= 1100)
  {
    if (v3 <= 999)
    {
      if ((v3 - 10) >= 3)
      {
        if (v3 != 23)
        {
          return v4;
        }

        v5 = [(AXEventRepresentation *)self _newAccelerometerHIDEventRef];
      }

      else
      {
        v5 = [(AXEventRepresentation *)self _newKeyboardHIDEventRef];
      }

      goto LABEL_21;
    }

    v6 = v3 + 24;
    if ((v3 - 1000) <= 0x33)
    {
      if (((1 << v6) & 0xFCF66603FC3) != 0)
      {
        goto LABEL_20;
      }

      if (((1 << v6) & 0xFF00000000000) != 0)
      {
        v5 = [(AXEventRepresentation *)self _newTostadaButtonHIDEventRefWithType:v3];
        goto LABEL_21;
      }
    }

    if (v3 != 1100)
    {
      return v4;
    }

    return [(AXEventRepresentation *)self _newScrollHIDEventRef];
  }

  else
  {
    if (v3 <= 3200)
    {
      if (((v3 - 1200) > 0x19 || ((1 << (v3 + 80)) & 0x3CFFFFF) == 0) && (v3 - 1101) >= 6)
      {
        if (v3 == 3001)
        {
          v5 = [(AXEventRepresentation *)self _newHandHIDEventRef];
          goto LABEL_21;
        }

        return v4;
      }

      goto LABEL_20;
    }

    if (v3 <= 4499)
    {
      if ((v3 - 4200) >= 6)
      {
        if (v3 != 3201)
        {
          return v4;
        }

        v5 = [(AXEventRepresentation *)self _newIOSMACPointerRef];
LABEL_21:
        v4 = v5;
        if (v5)
        {
          [(AXEventRepresentation *)self isBuiltIn];
          IOHIDEventSetIntegerValue();
          [(AXEventRepresentation *)self _applyAccessibilityDataToRealEvent:v4];
        }

        return v4;
      }

LABEL_20:
      v5 = [(AXEventRepresentation *)self _newButtonHIDEventRefWithType:v3];
      goto LABEL_21;
    }

    if ((v3 - 4500) < 2)
    {
      goto LABEL_20;
    }

    if (v3 != 5000)
    {
      return v4;
    }

    return [(AXEventRepresentation *)self _newAccessibilityHIDEventRef];
  }
}

- (BOOL)isDownEvent
{
  v2 = [(AXEventRepresentation *)self type];
  result = 1;
  if (v2 > 1199)
  {
    v4 = v2 - 1200;
    v5 = v4 > 0x1E;
    v6 = (1 << v4) & 0x55555555;
    if (!v5 && v6 != 0)
    {
      return result;
    }

    return 0;
  }

  if (((v2 - 1006) > 0x1A || ((1 << (v2 + 18)) & 0x4200005) == 0) && ((v2 - 1101) > 4 || ((1 << (v2 - 77)) & 0x15) == 0) && v2 != 10)
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
  v3 = [(AXEventRepresentation *)self accelerometerInfo];
  [v3 x];
  v4 = [(AXEventRepresentation *)self accelerometerInfo];
  [v4 y];
  v5 = [(AXEventRepresentation *)self accelerometerInfo];
  [v5 z];
  v6 = [(AXEventRepresentation *)self accelerometerInfo];
  [v6 type];
  AccelerometerEventWithType = IOHIDEventCreateAccelerometerEventWithType();

  [(AXEventRepresentation *)self senderID];
  IOHIDEventSetSenderID();
  return AccelerometerEventWithType;
}

- (__IOHIDEvent)_newScrollHIDEventRef
{
  v3 = *MEMORY[0x1E695E480];
  v4 = [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  v5.n128_f64[0] = [(AXEventRepresentation *)self scrollAmount];
  v6.n128_u64[0] = 0;
  v7.n128_u64[0] = 0;

  return MEMORY[0x1EEDC7FB0](v3, v4, 0, v6, v5, v7);
}

- (__IOHIDEvent)_newKeyboardHIDEventRef
{
  v3 = [(AXEventRepresentation *)self keyInfo];
  [v3 usagePage];

  [(AXEventRepresentation *)self isDownEvent];
  [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v5 = [(AXEventRepresentation *)self HIDAttributeData];

  if (v5)
  {
    v6 = [(AXEventRepresentation *)self HIDAttributeData];
    [v6 bytes];
    v7 = [(AXEventRepresentation *)self HIDAttributeData];
    [v7 length];
    IOHIDEventSetAttributeData();
  }

  [(AXEventRepresentation *)self senderID];
  IOHIDEventSetSenderID();
  v8 = [(AXEventRepresentation *)self keyInfo];
  [v8 keyCode];
  IOHIDEventSetIntegerValue();

  IOHIDEventSetIntegerValue();
  [(AXEventRepresentation *)self flags];
  IOHIDEventSetEventFlags();
  return KeyboardEvent;
}

- (__IOHIDEvent)_newButtonHIDEventRefWithType:(unsigned int)a3
{
  KeyboardEvent = 0;
  if (a3 > 1199)
  {
    if (a3 <= 4199)
    {
      switch(a3)
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

    if (a3 > 4203)
    {
      if (a3 > 4499)
      {
        if (a3 == 4500)
        {
          v5 = 0;
          v6 = 0;
        }

        else
        {
          if (a3 != 4501)
          {
            return KeyboardEvent;
          }

          v5 = 0;
          v6 = 0;
        }
      }

      else if (a3 == 4204)
      {
        v5 = 0;
        v6 = 0;
      }

      else
      {
        if (a3 != 4205)
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
    v7 = [(AXEventRepresentation *)self HIDAttributeData];

    if (v7)
    {
      v8 = [(AXEventRepresentation *)self HIDAttributeData];
      [v8 bytes];
      v9 = [(AXEventRepresentation *)self HIDAttributeData];
      [v9 length];
      IOHIDEventSetAttributeData();
    }

    v10 = [(AXEventRepresentation *)self additionalFlags];
    if (v5 | v6)
    {
      v11 = v10 | 0x40;
    }

    else
    {
      v11 = v10;
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

  if (a3 > 1100)
  {
    if (a3 > 1103)
    {
      switch(a3)
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

    else if (a3 == 1101)
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
  switch(a3)
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

- (__IOHIDEvent)_newTostadaButtonHIDEventRefWithType:(unsigned int)a3
{
  if (a3 - 1044 > 7)
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
  v3 = [(AXEventRepresentation *)self accessibilityData];
  v4 = v3;
  if (v3)
  {
    [v3 dataBytes];
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

- (id)normalizedEventRepresentation:(BOOL)a3 scale:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [(AXEventRepresentation *)self copy];
  }

  else
  {
    v5 = self;
  }

  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(AXEventRepresentation *)v5 handInfo];
  v8 = [v7 pathsIncludingMayBeginEvents];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 pathLocation];
        [v13 setPathLocation:{AXNormalizePoint(v4, v14)}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v6;
}

- (id)fakeTouchScaleEventRepresentation:(BOOL)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (fakeTouchScaleEventRepresentation__onceToken == -1)
  {
    if (a3)
    {
LABEL_3:
      v5 = [(AXEventRepresentation *)self copy];
      goto LABEL_6;
    }
  }

  else
  {
    [AXEventRepresentation fakeTouchScaleEventRepresentation:];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v5 = self;
LABEL_6:
  v7 = v5;
  LODWORD(v6) = fakeTouchScaleEventRepresentation__TouchScaleFactor;
  if (*&fakeTouchScaleEventRepresentation__TouchScaleFactor != 1.0)
  {
    v8 = [(AXEventRepresentation *)v5 handInfo];
    [v8 handPosition];
    v10 = v9 * *&fakeTouchScaleEventRepresentation__TouchScaleFactor;
    v11 = [(AXEventRepresentation *)v7 handInfo];
    [v11 handPosition];
    v13 = v12 * *&fakeTouchScaleEventRepresentation__TouchScaleFactor;
    v14 = [(AXEventRepresentation *)v7 handInfo];
    [v14 setHandPosition:{v10, v13}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = [(AXEventRepresentation *)v7 handInfo];
    v16 = [v15 paths];

    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          [v21 pathLocation];
          [v21 setPathLocation:{v22 * *&fakeTouchScaleEventRepresentation__TouchScaleFactor, v23 * *&fakeTouchScaleEventRepresentation__TouchScaleFactor}];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

- (void)modifyPoints:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AXEventRepresentation *)self handInfo];
  v6 = [v5 paths];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 pathLocation];
        v4[2](v4);
        [v11 setPathLocation:?];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(AXEventRepresentation *)self handInfo];
  v4 = [v3 paths];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setDidUpdateMask:0];
        [v9 setWillUpdateMask:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(AXEventRepresentation *)self setGenerationCount:0];
  [(AXEventRepresentation *)self setDidUpdateMask:0];
  [(AXEventRepresentation *)self setWillUpdateMask:0];
}

- (id)denormalizedEventRepresentation:(BOOL)a3 descale:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [(AXEventRepresentation *)self copy];
  }

  else
  {
    v5 = self;
  }

  v6 = v5;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(AXEventRepresentation *)v5 handInfo];
  v8 = [v7 pathsIncludingMayBeginEvents];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 pathLocation];
        [v13 setPathLocation:{AXDenormalizePoint(v4, v14, v15)}];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v6;
}

- (__IOHIDEvent)_newIOSMACPointerRef
{
  [(AXEventRepresentation *)self HIDTime];
  v3 = [(AXEventRepresentation *)self iosmacPointerInfo];
  [v3 location];
  v4 = [(AXEventRepresentation *)self iosmacPointerInfo];
  [v4 location];
  v5 = [(AXEventRepresentation *)self iosmacPointerInfo];
  [v5 pressed];
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
  v3 = [(AXEventRepresentation *)self handInfo];
  v4 = [v3 eventType];

  if (v4 <= 5)
  {
    if (v4 == 1)
    {
      AXDeviceHasHomeButton();
      v5 = [(AXEventRepresentation *)self handInfo];
      v6 = [v5 pathsIncludingMayBeginEvents];
      v7 = [v6 firstObject];

      if (v7)
      {
        [v7 pathLocation];
        v8 = [(AXEventRepresentation *)self screenEdgeForPoint:?];
      }

      else
      {
        v8 = 0;
      }

      [objc_opt_class() setSwipeFromEdge:v8];
    }
  }

  else if (v4 == 6)
  {
    AXDeviceHasHomeButton();
  }

  [(AXEventRepresentation *)self _machTimeForHIDEventRef];
  if (![(AXEventRepresentation *)self isGeneratedEvent])
  {
    v9 = [(AXEventRepresentation *)self handInfo];
    [v9 handEventMask];
  }

  v41 = (v4 < 0xC) & (0x826u >> v4);
  if ([(AXEventRepresentation *)self isGeneratedEvent])
  {
    v10 = [(AXEventRepresentation *)self handInfo];
    [v10 additionalHandEventFlagsForGeneratedEvents];
  }

  v11 = [objc_opt_class() swipeFromEdge];
  _eventMasksForEdgeSwipe(v11);
  v12 = [(AXEventRepresentation *)self handInfo];
  [v12 handIndex];
  v13 = [(AXEventRepresentation *)self handInfo];
  [v13 handIdentity];
  v14 = [(AXEventRepresentation *)self handInfo];
  [v14 handPosition];
  v15 = [(AXEventRepresentation *)self handInfo];
  [v15 handPosition];
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();

  if (v4 <= 0xB && ((1 << v4) & 0x826) != 0)
  {
    IOHIDEventSetIntegerValue();
  }

  [(AXEventRepresentation *)self generationCount];
  IOHIDEventSetIntegerValue();
  [(AXEventRepresentation *)self willUpdateMask];
  IOHIDEventSetIntegerValue();
  [(AXEventRepresentation *)self didUpdateMask];
  IOHIDEventSetIntegerValue();
  v17 = [(AXEventRepresentation *)self handInfo];
  v18 = [v17 pathsIncludingMayBeginEvents];

  v40 = v18;
  v39 = [v18 count];
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
        v21 = [(AXEventRepresentation *)self handInfo];
        [v21 additionalHandEventFlagsForGeneratedEvents];
      }

      v22 = v41;
      if (![(AXEventRepresentation *)self isGeneratedEvent])
      {
        v23 = [v20 pathProximity];
        [v20 pathProximity];
        v22 = (v23 >> 1) & 1;
      }

      v24 = [objc_opt_class() swipeFromEdge];
      _eventMasksForEdgeSwipe(v24);
      v25 = [v20 transducerType];
      [v20 pathIndex];
      [v20 pathIdentity];
      if (v25)
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

  v29 = [(AXEventRepresentation *)self HIDAttributeData];

  if (v29)
  {
    v30 = [(AXEventRepresentation *)self HIDAttributeData];
    [v30 bytes];
    v31 = [(AXEventRepresentation *)self HIDAttributeData];
    [v31 length];
    IOHIDEventSetAttributeData();
  }

  [(AXEventRepresentation *)self senderID];
  IOHIDEventSetSenderID();
  v32 = [(AXEventRepresentation *)self handInfo];
  v33 = [v32 eventType];

  if (v33 == 8)
  {
    [(AXEventRepresentation *)self isDisplayIntegrated];
  }

  IOHIDEventSetIntegerValue();

  return DigitizerEvent;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v6 = [(AXEventRepresentation *)self handInfo];
  v7 = [v6 copyWithZone:a3];

  [(AXEventRepresentation *)v5 setHandInfo:v7];
  v8 = [(AXEventRepresentation *)self data];
  v9 = [v8 copyWithZone:a3];

  [(AXEventRepresentation *)v5 setData:v9];
  v10 = [(AXEventRepresentation *)self clientId];
  v11 = [v10 copyWithZone:a3];

  [(AXEventRepresentation *)v5 setClientId:v11];
  [(AXEventRepresentation *)v5 setTaskPort:[(AXEventRepresentation *)self taskPort]];
  [(AXEventRepresentation *)v5 setHIDTime:[(AXEventRepresentation *)self HIDTime]];
  v12 = [(AXEventRepresentation *)self HIDAttributeData];
  [(AXEventRepresentation *)v5 setHIDAttributeData:v12];

  [(AXEventRepresentation *)v5 setAdditionalFlags:[(AXEventRepresentation *)self additionalFlags]];
  [(AXEventRepresentation *)v5 setContextId:[(AXEventRepresentation *)self contextId]];
  [(AXEventRepresentation *)v5 setDisplayId:[(AXEventRepresentation *)self displayId]];
  [(AXEventRepresentation *)v5 setSenderID:[(AXEventRepresentation *)self senderID]];
  v13 = [(AXEventRepresentation *)self keyInfo];
  v14 = [v13 copyWithZone:a3];
  [(AXEventRepresentation *)v5 setKeyInfo:v14];

  v15 = [(AXEventRepresentation *)self accelerometerInfo];
  v16 = [v15 copyWithZone:a3];
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
  v17 = [(AXEventRepresentation *)self gameControllerInfo];
  v18 = [v17 copyWithZone:a3];

  [(AXEventRepresentation *)v5 setGameControllerInfo:v18];
  v19 = [(AXEventRepresentation *)self pointerControllerInfo];
  v20 = [v19 copyWithZone:a3];

  [(AXEventRepresentation *)v5 setPointerControllerInfo:v20];
  v21 = [(AXEventRepresentation *)self iosmacPointerInfo];
  v22 = [v21 copyWithZone:a3];
  [(AXEventRepresentation *)v5 setIosmacPointerInfo:v22];

  [(AXEventRepresentation *)v5 setCreatorHIDEvent:[(AXEventRepresentation *)self creatorHIDEvent]];
  [(AXEventRepresentation *)v5 setIsBuiltIn:[(AXEventRepresentation *)self isBuiltIn]];
  v23 = [(AXEventRepresentation *)self auxiliaryData];
  [(AXEventRepresentation *)v5 setAuxiliaryData:v23];

  return v5;
}

- (AXEventRepresentation)initWithCoder:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = AXEventRepresentation;
  v5 = [(AXEventRepresentation *)&v23 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt32ForKey:@"type"];
    v5->_originalType = [v4 decodeInt32ForKey:@"originalType"];
    v5->_subtype = [v4 decodeInt32ForKey:@"subtype"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [v6 getValue:&v5->_location size:16];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"windowLocation"];
    [v7 getValue:&v5->_windowLocation size:16];

    v5->_time = [v4 decodeInt64ForKey:@"time"];
    v5->_window = [v4 decodeInt64ForKey:@"window"];
    v5->_flags = [v4 decodeInt32ForKey:@"flags"];
    v5->_pid = [v4 decodeInt32ForKey:@"pid"];
    v5->_redirectEvent = [v4 decodeBoolForKey:@"isRedirectEvent"];
    v5->_systemDrag = [v4 decodeBoolForKey:@"isSystemDrag"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handInfo"];
    [(AXEventRepresentation *)v5 setHandInfo:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyInfo"];
    [(AXEventRepresentation *)v5 setKeyInfo:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gameInfo"];
    [(AXEventRepresentation *)v5 setGameControllerInfo:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pointerInfo"];
    [(AXEventRepresentation *)v5 setPointerControllerInfo:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerInfo"];
    [(AXEventRepresentation *)v5 setAccelerometerInfo:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(AXEventRepresentation *)v5 setData:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iosmacPointerInfo"];
    [(AXEventRepresentation *)v5 setIosmacPointerInfo:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientId"];
    [(AXEventRepresentation *)v5 setClientId:v15];

    v5->_taskPort = [v4 decodeInt32ForKey:@"taskPort"];
    v5->_HIDTime = [v4 decodeInt64ForKey:@"HIDTime"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HIDAttributeData"];
    [(AXEventRepresentation *)v5 setHIDAttributeData:v16];

    -[AXEventRepresentation setAdditionalFlags:](v5, "setAdditionalFlags:", [v4 decodeInt64ForKey:@"additionalFlags"]);
    v5->_contextId = [v4 decodeInt32ForKey:@"contextId"];
    v5->_displayId = [v4 decodeInt32ForKey:@"displayId"];
    v5->_senderID = [v4 decodeInt64ForKey:@"HIDSenderId"];
    v5->_isBuiltIn = [v4 decodeBoolForKey:@"isBuiltIn"];
    v5->_isDisplayIntegrated = [v4 decodeBoolForKey:@"isDisplayIntegrated"];
    v5->_generationCount = [v4 decodeInt64ForKey:@"generationCount"];
    v5->_willUpdateMask = [v4 decodeInt32ForKey:@"willUpdateMask"];
    v5->_didUpdateMask = [v4 decodeInt32ForKey:@"didUpdateMask"];
    v5->_isGeneratedEvent = [v4 decodeBoolForKey:@"isGeneratedEvent"];
    v5->_scrollAmount = [v4 decodeInt64ForKey:@"scrollAmount"];
    v5->_scrollAccelAmount = [v4 decodeInt64ForKey:@"scrollAccelAmount"];
    v17 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    v19 = [v17 setWithArray:v18];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"auxiliaryData"];
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

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v8 = a3;
  [v8 encodeInt32:type forKey:@"type"];
  [v8 encodeInt32:self->_originalType forKey:@"originalType"];
  [v8 encodeInt32:self->_subtype forKey:@"subtype"];
  v5 = [MEMORY[0x1E696B098] valueWithBytes:&self->_location objCType:"{CGPoint=dd}"];
  [v8 encodeObject:v5 forKey:@"location"];

  v6 = [MEMORY[0x1E696B098] valueWithBytes:&self->_windowLocation objCType:"{CGPoint=dd}"];
  [v8 encodeObject:v6 forKey:@"windowLocation"];

  [v8 encodeInt64:self->_time forKey:@"time"];
  [v8 encodeInt64:self->_window forKey:@"window"];
  [v8 encodeInt32:self->_flags forKey:@"flags"];
  [v8 encodeInt32:self->_pid forKey:@"pid"];
  [v8 encodeObject:self->_data forKey:@"data"];
  [v8 encodeObject:self->_handInfo forKey:@"handInfo"];
  [v8 encodeObject:self->_gameControllerInfo forKey:@"gameInfo"];
  [v8 encodeObject:self->_pointerControllerInfo forKey:@"pointerInfo"];
  [v8 encodeObject:self->_keyInfo forKey:@"keyInfo"];
  [v8 encodeObject:self->_accelerometerInfo forKey:@"accelerometerInfo"];
  [v8 encodeObject:self->_clientId forKey:@"clientId"];
  [v8 encodeInt32:self->_taskPort forKey:@"taskPort"];
  [v8 encodeInt64:self->_HIDTime forKey:@"HIDTime"];
  [v8 encodeObject:self->_HIDAttributeData forKey:@"HIDAttributeData"];
  [v8 encodeInt64:self->_additionalFlags forKey:@"additionalFlags"];
  [v8 encodeInt32:self->_contextId forKey:@"contextId"];
  [v8 encodeInt32:self->_displayId forKey:@"displayId"];
  [v8 encodeInt64:self->_senderID forKey:@"HIDSenderId"];
  [v8 encodeBool:self->_isBuiltIn forKey:@"isBuiltIn"];
  [v8 encodeBool:self->_isDisplayIntegrated forKey:@"isDisplayIntegrated"];
  [v8 encodeInt64:self->_generationCount forKey:@"generationCount"];
  [v8 encodeInt32:self->_willUpdateMask forKey:@"willUpdateMask"];
  [v8 encodeInt32:self->_didUpdateMask forKey:@"didUpdateMask"];
  [v8 encodeBool:self->_isGeneratedEvent forKey:@"isGeneratedEvent"];
  [v8 encodeInt64:self->_scrollAmount forKey:@"scrollAmount"];
  [v8 encodeInt64:self->_scrollAccelAmount forKey:@"scrollAccelAmount"];
  [v8 encodeBool:self->_redirectEvent forKey:@"isRedirectEvent"];
  [v8 encodeBool:self->_systemDrag forKey:@"isSystemDrag"];
  v7 = [(AXEventRepresentation *)self iosmacPointerInfo];
  [v8 encodeObject:v7 forKey:@"iosmacPointerInfo"];

  [v8 encodeObject:self->_auxiliaryData forKey:@"auxiliaryData"];
}

- (unsigned)firstPathContextId
{
  if ([(AXEventRepresentation *)self type]!= 3001)
  {
    return 0;
  }

  v3 = [(AXEventRepresentation *)self handInfo];
  v4 = [v3 paths];
  v5 = [v4 firstPath];

  LODWORD(v3) = [v5 pathWindowContextID];
  return v3;
}

- (id)accessibilityEventRepresentationTabularDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p>\n  Type:             %u (orig:%u)\n  Subtype:          %d\n  Location:         x:%f y:%f\n  Window Location:  x:%f y:%f\n  Window:           %p\n  Flags:            %d\n  PID:              %d\n  Time:             %llu\n  HIDTime:          %llu\n  Data:             %@\n  Task Port:        %d\n  client ID:        %@\n  context ID:       %u\n", v5, self, self->_type, self->_originalType, self->_subtype, *&self->_location.x, *&self->_location.y, *&self->_windowLocation.x, *&self->_windowLocation.y, self->_window, self->_flags, self->_pid, self->_time, self->_HIDTime, self->_data, self->_taskPort, self->_clientId, self->_contextId];

  v7 = [(AXEventRepresentation *)self handInfo];

  if (v7)
  {
    v8 = [(AXEventRepresentation *)self handInfo];
    v9 = [v8 accessibilityEventRepresentationTabularDescription];
    [v6 appendString:v9];
  }

  v10 = [(AXEventRepresentation *)self gameControllerInfo];

  if (v10)
  {
    v11 = [(AXEventRepresentation *)self gameControllerInfo];
    v12 = [v11 accessibilityEventRepresentationTabularDescription];
    [v6 appendString:v12];
  }

  v13 = [(AXEventRepresentation *)self pointerControllerInfo];

  if (v13)
  {
    v14 = [(AXEventRepresentation *)self pointerControllerInfo];
    v15 = [v14 accessibilityEventRepresentationTabularDescription];
    [v6 appendString:v15];
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
  v13 = [(AXEventRepresentation *)self _senderNameForID];
  v14 = [v20 stringWithFormat:@"%@. type:%u subtype:%d loc:[x:%f y:%f] windowLoc:[x:%f y:%f] window:%p flags:%d pid:%d time:%llu HIDTime:%llu taskPort:%d client:%@ ctxtID:%u sender:%@ data:[%lu bytes]", v3, type, subtype, location, *&x, *&y, window, flags, pid, time, HIDTime, taskPort, clientId, contextId, v13, -[NSData length](self->_data, "length")];

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
  v3 = [(AXEventRepresentation *)self senderID];
  if (v3 + 0x7FFFFFF7E8CE6C8FLL >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (ID:0x%04llx)", -[AXEventRepresentation senderID](self, "senderID")];
  }

  else
  {
    v4 = off_1E71EC0C8[v3 - 0x817319371];
  }

  return v4;
}

- (unint64_t)fingerCount
{
  v2 = [(AXEventRepresentation *)self handInfo];
  v3 = [v2 currentFingerCount];

  return v3;
}

- (BOOL)isTouchDown
{
  v2 = [(AXEventRepresentation *)self handInfo];
  v3 = [v2 eventType] == 1;

  return v3;
}

- (BOOL)isMove
{
  v2 = [(AXEventRepresentation *)self handInfo];
  v3 = [v2 eventType] == 2;

  return v3;
}

- (BOOL)isChordChange
{
  v2 = [(AXEventRepresentation *)self handInfo];
  v3 = [v2 eventType] == 5;

  return v3;
}

- (BOOL)isLift
{
  v2 = [(AXEventRepresentation *)self handInfo];
  v3 = [v2 eventType] == 6;

  return v3;
}

- (BOOL)isInRange
{
  v2 = [(AXEventRepresentation *)self handInfo];
  v3 = [v2 eventType] == 9;

  return v3;
}

- (BOOL)isInRangeLift
{
  v2 = [(AXEventRepresentation *)self handInfo];
  v3 = [v2 eventType] == 10;

  return v3;
}

- (BOOL)isCancel
{
  v2 = [(AXEventRepresentation *)self handInfo];
  v3 = [v2 eventType] == 8;

  return v3;
}

- (unsigned)screenEdgeForPoint:(CGPoint)a3
{
  if (a3.x < 0.01)
  {
    return 1;
  }

  if (a3.x > 0.99)
  {
    return 2;
  }

  if (a3.y < 0.01)
  {
    return 3;
  }

  if (a3.y <= 0.99)
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
  v3 = [(AXEventRepresentation *)self creatorHIDEvent];
  if (v3)
  {

    [(AXEventRepresentation *)self _applyAccessibilityDataToRealEvent:v3];
  }
}

+ (BOOL)_HIDEventIsAccessibilityEvent:(__IOHIDEvent *)a3
{
  if (!a3)
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

- (BOOL)_HIDEventIsAccessibilityEvent:(__IOHIDEvent *)a3
{
  v4 = objc_opt_class();

  return [v4 _HIDEventIsAccessibilityEvent:a3];
}

- (__IOHIDEvent)_accessibilityEventFromRealEvent:(__IOHIDEvent *)a3
{
  ValueAtIndex = a3;
  if (a3 && ![(AXEventRepresentation *)self _HIDEventIsAccessibilityEvent:a3])
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

- (void)_applyAccessibilityDataToRealEvent:(__IOHIDEvent *)a3
{
  v5 = [(AXEventRepresentation *)self accessibilityData];
  if (a3 && v5)
  {
    v7 = v5;
    if ([(AXEventRepresentation *)self _HIDEventIsAccessibilityEvent:a3]|| [(AXEventRepresentation *)self _accessibilityEventFromRealEvent:a3])
    {
      _AXAssert();
LABEL_6:
      v5 = v7;
      goto LABEL_7;
    }

    IOHIDEventGetTimeStamp();
    [v7 dataBytes];
    [v7 dataLength];
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventAppendEvent();
    v5 = v7;
    if (VendorDefinedEvent)
    {
      CFRelease(VendorDefinedEvent);
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (id)_accessibilityDataFromRealEvent:(__IOHIDEvent *)a3
{
  if (a3)
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
  v3 = [a1 touchCounter];
  if ((v3 + 1) > 1)
  {
    v4 = (v3 + 1);
  }

  else
  {
    v4 = 1;
  }

  [a1 setTouchCounter:v4];
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