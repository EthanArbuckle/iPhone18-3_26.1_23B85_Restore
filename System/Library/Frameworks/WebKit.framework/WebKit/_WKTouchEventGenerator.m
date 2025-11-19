@interface _WKTouchEventGenerator
+ (id)sharedTouchEventGenerator;
- (BOOL)_sendHIDEvent:(__IOHIDEvent *)a3 window:(id)a4;
- (BOOL)_sendMarkerHIDEventInWindow:(id)a3 completionBlock:(id)a4;
- (_WKTouchEventGenerator)init;
- (__IOHIDEvent)_createIOHIDEventType:(int)a3;
- (uint64_t)_sendHIDEvent:(WTF *)this window:(void *)a2;
- (uint64_t)_sendHIDEvent:(uint64_t)a1 window:;
- (uint64_t)_sendMarkerHIDEventInWindow:(WTF *)this completionBlock:(void *)a2;
- (uint64_t)_sendMarkerHIDEventInWindow:(uint64_t)a1 completionBlock:;
- (void)_sendHIDEvent:(void *)a1 window:;
- (void)_sendMarkerHIDEventInWindow:(void *)a1 completionBlock:;
- (void)_updateTouchPoints:()span<CGPoint window:(18446744073709551615UL>)a3;
- (void)dealloc;
- (void)liftUp:(CGPoint)a3 touchCount:(unint64_t)a4 window:(id)a5;
- (void)liftUp:(CGPoint)a3 window:(id)a4 completionBlock:(id)a5;
- (void)liftUpAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 window:(id)a5;
- (void)moveToPoint:(CGPoint)a3 duration:(double)a4 window:(id)a5;
- (void)moveToPoint:(CGPoint)a3 duration:(double)a4 window:(id)a5 completionBlock:(id)a6;
- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 duration:(double)a5 window:(id)a6;
- (void)receivedHIDEvent:(__IOHIDEvent *)a3;
- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4 window:(id)a5;
- (void)touchDown:(CGPoint)a3 window:(id)a4 completionBlock:(id)a5;
- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 window:(id)a5;
@end

@implementation _WKTouchEventGenerator

+ (id)sharedTouchEventGenerator
{
  if (_MergedGlobals_68 == 1)
  {
    return qword_1ED6424B8;
  }

  result = objc_alloc_init(_WKTouchEventGenerator);
  qword_1ED6424B8 = result;
  _MergedGlobals_68 = 1;
  return result;
}

- (_WKTouchEventGenerator)init
{
  v7.receiver = self;
  v7.super_class = _WKTouchEventGenerator;
  v2 = [(_WKTouchEventGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    p_activePoints = &v2->_activePoints;
    do
    {
      p_activePoints->__elems_[0].identifier = fingerIdentifiers[v4];
      p_activePoints = (p_activePoints + 48);
      ++v4;
    }

    while (v4 != 5);
    v2->_eventCallbacks = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKTouchEventGenerator;
  [(_WKTouchEventGenerator *)&v3 dealloc];
}

- (__IOHIDEvent)_createIOHIDEventType:(int)a3
{
  mach_absolute_time();
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  result = IOHIDEventSetIntegerValue();
  if (!self->_activePointCount)
  {
    return DigitizerEvent;
  }

  v7 = 0;
  p_pathProximity = &self->_activePoints.__elems_[0].pathProximity;
  while (v7 != 5)
  {
    if (a3 == 1)
    {
      if (*(p_pathProximity - 2) == 0.0)
      {
        *(p_pathProximity - 2) = 0x4014000000000000;
      }

      if (*(p_pathProximity - 1) == 0.0)
      {
        *(p_pathProximity - 1) = 0;
      }

      if (!*p_pathProximity)
      {
        *p_pathProximity = 3;
      }
    }

    else if ((a3 & 0xFFFFFFFE) == 4)
    {
      *(p_pathProximity - 2) = 0;
      *(p_pathProximity - 1) = 0;
      *p_pathProximity = 0;
    }

    DigitizerFingerEvent = IOHIDEventCreateDigitizerFingerEvent();
    IOHIDEventSetFloatValue();
    IOHIDEventSetFloatValue();
    result = IOHIDEventAppendEvent();
    if (DigitizerFingerEvent)
    {
      CFRelease(DigitizerFingerEvent);
    }

    ++v7;
    p_pathProximity += 48;
    if (v7 >= self->_activePointCount)
    {
      return DigitizerEvent;
    }
  }

  __break(1u);
  return result;
}

- (BOOL)_sendHIDEvent:(__IOHIDEvent *)a3 window:(id)a4
{
  if (!self->_ioSystemClient.m_ptr)
  {
    v7 = IOHIDEventSystemClientCreate();
    m_ptr = self->_ioSystemClient.m_ptr;
    self->_ioSystemClient.m_ptr = v7;
    if (m_ptr)
    {
      CFRelease(m_ptr);
    }
  }

  if (a3)
  {
    v9 = [a4 _contextId];
    v10 = v9;
    WTF::RunLoop::mainSingleton(v9);
    CFRetain(a3);
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F10FBDE8;
    *(v11 + 8) = a3;
    *(v11 + 16) = v10;
    v13 = v11;
    WTF::RunLoop::dispatch();
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  return 1;
}

- (BOOL)_sendMarkerHIDEventInWindow:(id)a3 completionBlock:(id)a4
{
  v14 = +[_WKTouchEventGenerator nextEventCallbackID];
  -[NSMutableDictionary setObject:forKey:](self->_eventCallbacks, "setObject:forKey:", _Block_copy(a4), [MEMORY[0x1E696AD98] numberWithLong:v14]);
  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v8 = VendorDefinedEvent;
    v9 = [a3 _contextId];
    v10 = v9;
    WTF::RunLoop::mainSingleton(v9);
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F10FBE10;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10;
    v13 = v11;
    WTF::RunLoop::dispatch();
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  return 1;
}

- (void)_updateTouchPoints:()span<CGPoint window:(18446744073709551615UL>)a3
{
  activePointCount = self->_activePointCount;
  if (!activePointCount)
  {
    self->_activePointCount = a3.var1;
    v7 = 1;
    if (a3.var1)
    {
      goto LABEL_8;
    }

LABEL_13:
    v11 = [(_WKTouchEventGenerator *)self _createIOHIDEventType:v7];
    [(_WKTouchEventGenerator *)self _sendHIDEvent:v11 window:a4];
    if (v11)
    {

      CFRelease(v11);
    }

    return;
  }

  if (!a3.var1)
  {
    self->_activePointCount = 0;
    v7 = 4;
    goto LABEL_13;
  }

  if (a3.var1 == activePointCount)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  self->_activePointCount = a3.var1;
LABEL_8:
  v8 = 0;
  p_point = &self->_activePoints.__elems_[0].point;
  while (1)
  {
    v10 = v8 * 16 + 16;
    if (v8 == 5)
    {
      break;
    }

    *p_point = a3.var0[v8];
    p_point += 3;
    ++v8;
    if (16 * a3.var1 == v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 window:(id)a5
{
  v7 = 5;
  if (a4 < 5)
  {
    v7 = a4;
  }

  self->_activePointCount = v7;
  if (a4)
  {
    v8 = 16 * v7;
    p_point = &self->_activePoints.__elems_[0].point;
    do
    {
      v10 = *a3++;
      *p_point = v10;
      p_point += 3;
      v8 -= 16;
    }

    while (v8);
  }

  v11 = [(_WKTouchEventGenerator *)self _createIOHIDEventType:1];
  [(_WKTouchEventGenerator *)self _sendHIDEvent:v11 window:a5];
  if (v11)
  {

    CFRelease(v11);
  }
}

- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4 window:(id)a5
{
  if (a4 >= 5)
  {
    v5 = 5;
  }

  else
  {
    v5 = a4;
  }

  LODWORD(v10) = 5;
  HIDWORD(v10) = v5;
  if (a4)
  {
    v6 = v11;
    do
    {
      *v6++ = a3;
    }

    while (v6 != &v11[v5]);
  }

  [(_WKTouchEventGenerator *)self touchDownAtPoints:v11 touchCount:a3.x window:a3.y, v11, v10];
  if (v11 != v9 && v9 != 0)
  {
    WTF::fastFree(v9, v7);
  }
}

- (void)liftUpAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 window:(id)a5
{
  activePointCount = self->_activePointCount;
  if (a4 >= activePointCount)
  {
    v8 = self->_activePointCount;
  }

  else
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = v8;
  }

  if (v8)
  {
    v10 = 16 * v9;
    v11 = (&self->_activePoints.__elems_[0].point.x + 48 * activePointCount - 48 * v9);
    v12 = ~v9 + activePointCount;
    while (++v12 < 5)
    {
      v13 = *a3++;
      *v11 = v13;
      v11 += 3;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v14 = [(_WKTouchEventGenerator *)self _createIOHIDEventType:4];
    [(_WKTouchEventGenerator *)self _sendHIDEvent:v14 window:a5];
    self->_activePointCount = activePointCount - v9;
    if (v14)
    {

      CFRelease(v14);
    }
  }
}

- (void)liftUp:(CGPoint)a3 touchCount:(unint64_t)a4 window:(id)a5
{
  if (a4 >= 5)
  {
    v5 = 5;
  }

  else
  {
    v5 = a4;
  }

  LODWORD(v10) = 5;
  HIDWORD(v10) = v5;
  if (a4)
  {
    v6 = v11;
    do
    {
      *v6++ = a3;
    }

    while (v6 != &v11[v5]);
  }

  [(_WKTouchEventGenerator *)self liftUpAtPoints:v11 touchCount:a3.x window:a3.y, v11, v10];
  if (v11 != v9 && v9 != 0)
  {
    WTF::fastFree(v9, v7);
  }
}

- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 duration:(double)a5 window:(id)a6
{
  v28 = v31;
  if (a4 >= 5)
  {
    v11 = 5;
  }

  else
  {
    v11 = a4;
  }

  v29 = 5;
  v30 = v11;
  if (a4)
  {
    bzero(v31, 16 * v11);
    v26 = v11;
    bzero(v27, 16 * v11);
  }

  else
  {
    v26 = v11;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (a5 + -0.016 > 0.0)
  {
    v13 = 0;
    v25 = 1000000000.0;
    do
    {
      v14 = CFAbsoluteTimeGetCurrent() - Current;
      if (a4)
      {
        v15 = sin(v14 / a5 * 3.14159265 * 0.5);
        *&v16 = sin(v14 / a5 * v15 * 3.14159265 * 0.5);
        v17 = 0;
        v18 = 0;
        v19 = v30;
        v20 = vdupq_lane_s64(v16, 0);
        p_point = &self->_activePoints.__elems_[0].point;
        do
        {
          if (!v13)
          {
            if (v18 >= v19)
            {
              goto LABEL_26;
            }

            *(v28 + v17) = *p_point;
            v19 = v30;
          }

          if (v18 >= v19)
          {
LABEL_26:
            __break(0xC471u);
            JUMPOUT(0x19DB8D2ACLL);
          }

          if (v18 >= v26)
          {
            __break(0xC471u);
            JUMPOUT(0x19DB8D2B4);
          }

          *&v27[v17] = vmlaq_f64(*(v28 + v17), v20, vsubq_f64(a3[v17 / 0x10], *(v28 + v17)));
          ++v18;
          v17 += 16;
          p_point += 3;
        }

        while (16 * v11 != v17);
      }

      [(_WKTouchEventGenerator *)self _updateTouchPoints:*&v25 window:?];
      v22 = -(v14 - v13 * 0.016);
      if (v22 > 0.0)
      {
        __rqtp.tv_sec = 0;
        __rqtp.tv_nsec = (v22 * v25);
        nanosleep(&__rqtp, 0);
      }

      ++v13;
    }

    while (v14 < a5 + -0.016);
  }

  [(_WKTouchEventGenerator *)self _updateTouchPoints:a3 window:v11, a6];
  v24 = v28;
  if (v31 != v28)
  {
    if (v28)
    {
      v28 = 0;
      v29 = 0;
      WTF::fastFree(v24, v23);
    }
  }
}

- (void)touchDown:(CGPoint)a3 window:(id)a4 completionBlock:(id)a5
{
  [(_WKTouchEventGenerator *)self touchDown:a3.x window:a3.y];

  [(_WKTouchEventGenerator *)self _sendMarkerHIDEventInWindow:a4 completionBlock:a5];
}

- (void)liftUp:(CGPoint)a3 window:(id)a4 completionBlock:(id)a5
{
  [(_WKTouchEventGenerator *)self liftUp:a3.x window:a3.y];

  [(_WKTouchEventGenerator *)self _sendMarkerHIDEventInWindow:a4 completionBlock:a5];
}

- (void)moveToPoint:(CGPoint)a3 duration:(double)a4 window:(id)a5
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(_WKTouchEventGenerator *)self moveToPoints:&v5 touchCount:1 duration:a5 window:a4];
}

- (void)moveToPoint:(CGPoint)a3 duration:(double)a4 window:(id)a5 completionBlock:(id)a6
{
  [(_WKTouchEventGenerator *)self moveToPoint:a3.x duration:a3.y window:a4];

  [(_WKTouchEventGenerator *)self _sendMarkerHIDEventInWindow:a5 completionBlock:a6];
}

- (void)receivedHIDEvent:(__IOHIDEvent *)a3
{
  if (IOHIDEventGetType() == 1)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLong:IOHIDEventGetIntegerValue()];
    v5 = [(NSMutableDictionary *)self->_eventCallbacks objectForKey:v4];
    if (v5)
    {
      v6 = v5;
      [(NSMutableDictionary *)self->_eventCallbacks removeObjectForKey:v4];
      v6[2](v6);

      _Block_release(v6);
    }
  }
}

- (void)_sendHIDEvent:(void *)a1 window:
{
  v2 = a1[1];
  *a1 = &unk_1F10FBDE8;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

- (uint64_t)_sendHIDEvent:(WTF *)this window:(void *)a2
{
  v3 = *(this + 1);
  *this = &unk_1F10FBDE8;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)_sendHIDEvent:(uint64_t)a1 window:
{
  softLinkBKSHIDEventSetDigitizerInfo(*(a1 + 8), *(a1 + 16), 0, 0, 0, 0.0, 0.0);
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = *(a1 + 8);

  return [v2 _enqueueHIDEvent:v3];
}

- (void)_sendMarkerHIDEventInWindow:(void *)a1 completionBlock:
{
  v2 = a1[1];
  *a1 = &unk_1F10FBE10;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

- (uint64_t)_sendMarkerHIDEventInWindow:(WTF *)this completionBlock:(void *)a2
{
  v3 = *(this + 1);
  *this = &unk_1F10FBE10;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)_sendMarkerHIDEventInWindow:(uint64_t)a1 completionBlock:
{
  softLinkBKSHIDEventSetDigitizerInfo(*(a1 + 8), *(a1 + 16), 0, 0, 0, 0.0, 0.0);
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = *(a1 + 8);

  return [v2 _enqueueHIDEvent:v3];
}

@end