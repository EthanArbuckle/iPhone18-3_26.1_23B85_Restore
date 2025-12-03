@interface _WKTouchEventGenerator
+ (id)sharedTouchEventGenerator;
- (BOOL)_sendHIDEvent:(__IOHIDEvent *)event window:(id)window;
- (BOOL)_sendMarkerHIDEventInWindow:(id)window completionBlock:(id)block;
- (_WKTouchEventGenerator)init;
- (__IOHIDEvent)_createIOHIDEventType:(int)type;
- (uint64_t)_sendHIDEvent:(WTF *)this window:(void *)window;
- (uint64_t)_sendHIDEvent:(uint64_t)event window:;
- (uint64_t)_sendMarkerHIDEventInWindow:(WTF *)this completionBlock:(void *)block;
- (uint64_t)_sendMarkerHIDEventInWindow:(uint64_t)window completionBlock:;
- (void)_sendHIDEvent:(void *)event window:;
- (void)_sendMarkerHIDEventInWindow:(void *)window completionBlock:;
- (void)_updateTouchPoints:()span<CGPoint window:(18446744073709551615UL>)window;
- (void)dealloc;
- (void)liftUp:(CGPoint)up touchCount:(unint64_t)count window:(id)window;
- (void)liftUp:(CGPoint)up window:(id)window completionBlock:(id)block;
- (void)liftUpAtPoints:(CGPoint *)points touchCount:(unint64_t)count window:(id)window;
- (void)moveToPoint:(CGPoint)point duration:(double)duration window:(id)window;
- (void)moveToPoint:(CGPoint)point duration:(double)duration window:(id)window completionBlock:(id)block;
- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count duration:(double)duration window:(id)window;
- (void)receivedHIDEvent:(__IOHIDEvent *)event;
- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count window:(id)window;
- (void)touchDown:(CGPoint)down window:(id)window completionBlock:(id)block;
- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count window:(id)window;
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

- (__IOHIDEvent)_createIOHIDEventType:(int)type
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
    if (type == 1)
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

    else if ((type & 0xFFFFFFFE) == 4)
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

- (BOOL)_sendHIDEvent:(__IOHIDEvent *)event window:(id)window
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

  if (event)
  {
    _contextId = [window _contextId];
    v10 = _contextId;
    WTF::RunLoop::mainSingleton(_contextId);
    CFRetain(event);
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F10FBDE8;
    *(v11 + 8) = event;
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

- (BOOL)_sendMarkerHIDEventInWindow:(id)window completionBlock:(id)block
{
  v14 = +[_WKTouchEventGenerator nextEventCallbackID];
  -[NSMutableDictionary setObject:forKey:](self->_eventCallbacks, "setObject:forKey:", _Block_copy(block), [MEMORY[0x1E696AD98] numberWithLong:v14]);
  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v8 = VendorDefinedEvent;
    _contextId = [window _contextId];
    v10 = _contextId;
    WTF::RunLoop::mainSingleton(_contextId);
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

- (void)_updateTouchPoints:()span<CGPoint window:(18446744073709551615UL>)window
{
  activePointCount = self->_activePointCount;
  if (!activePointCount)
  {
    self->_activePointCount = window.var1;
    v7 = 1;
    if (window.var1)
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

  if (!window.var1)
  {
    self->_activePointCount = 0;
    v7 = 4;
    goto LABEL_13;
  }

  if (window.var1 == activePointCount)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  self->_activePointCount = window.var1;
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

    *p_point = window.var0[v8];
    p_point += 3;
    ++v8;
    if (16 * window.var1 == v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count window:(id)window
{
  countCopy = 5;
  if (count < 5)
  {
    countCopy = count;
  }

  self->_activePointCount = countCopy;
  if (count)
  {
    v8 = 16 * countCopy;
    p_point = &self->_activePoints.__elems_[0].point;
    do
    {
      v10 = *points++;
      *p_point = v10;
      p_point += 3;
      v8 -= 16;
    }

    while (v8);
  }

  v11 = [(_WKTouchEventGenerator *)self _createIOHIDEventType:1];
  [(_WKTouchEventGenerator *)self _sendHIDEvent:v11 window:window];
  if (v11)
  {

    CFRelease(v11);
  }
}

- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count window:(id)window
{
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  LODWORD(v10) = 5;
  HIDWORD(v10) = countCopy;
  if (count)
  {
    v6 = v11;
    do
    {
      *v6++ = down;
    }

    while (v6 != &v11[countCopy]);
  }

  [(_WKTouchEventGenerator *)self touchDownAtPoints:v11 touchCount:down.x window:down.y, v11, v10];
  if (v11 != v9 && v9 != 0)
  {
    WTF::fastFree(v9, v7);
  }
}

- (void)liftUpAtPoints:(CGPoint *)points touchCount:(unint64_t)count window:(id)window
{
  activePointCount = self->_activePointCount;
  if (count >= activePointCount)
  {
    countCopy = self->_activePointCount;
  }

  else
  {
    countCopy = count;
  }

  if (countCopy >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = countCopy;
  }

  if (countCopy)
  {
    v10 = 16 * v9;
    v11 = (&self->_activePoints.__elems_[0].point.x + 48 * activePointCount - 48 * v9);
    v12 = ~v9 + activePointCount;
    while (++v12 < 5)
    {
      v13 = *points++;
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
    [(_WKTouchEventGenerator *)self _sendHIDEvent:v14 window:window];
    self->_activePointCount = activePointCount - v9;
    if (v14)
    {

      CFRelease(v14);
    }
  }
}

- (void)liftUp:(CGPoint)up touchCount:(unint64_t)count window:(id)window
{
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  LODWORD(v10) = 5;
  HIDWORD(v10) = countCopy;
  if (count)
  {
    v6 = v11;
    do
    {
      *v6++ = up;
    }

    while (v6 != &v11[countCopy]);
  }

  [(_WKTouchEventGenerator *)self liftUpAtPoints:v11 touchCount:up.x window:up.y, v11, v10];
  if (v11 != v9 && v9 != 0)
  {
    WTF::fastFree(v9, v7);
  }
}

- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count duration:(double)duration window:(id)window
{
  v28 = v31;
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  v29 = 5;
  v30 = countCopy;
  if (count)
  {
    bzero(v31, 16 * countCopy);
    v26 = countCopy;
    bzero(v27, 16 * countCopy);
  }

  else
  {
    v26 = countCopy;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (duration + -0.016 > 0.0)
  {
    v13 = 0;
    v25 = 1000000000.0;
    do
    {
      v14 = CFAbsoluteTimeGetCurrent() - Current;
      if (count)
      {
        v15 = sin(v14 / duration * 3.14159265 * 0.5);
        *&v16 = sin(v14 / duration * v15 * 3.14159265 * 0.5);
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

          *&v27[v17] = vmlaq_f64(*(v28 + v17), v20, vsubq_f64(points[v17 / 0x10], *(v28 + v17)));
          ++v18;
          v17 += 16;
          p_point += 3;
        }

        while (16 * countCopy != v17);
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

    while (v14 < duration + -0.016);
  }

  [(_WKTouchEventGenerator *)self _updateTouchPoints:points window:countCopy, window];
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

- (void)touchDown:(CGPoint)down window:(id)window completionBlock:(id)block
{
  [(_WKTouchEventGenerator *)self touchDown:down.x window:down.y];

  [(_WKTouchEventGenerator *)self _sendMarkerHIDEventInWindow:window completionBlock:block];
}

- (void)liftUp:(CGPoint)up window:(id)window completionBlock:(id)block
{
  [(_WKTouchEventGenerator *)self liftUp:up.x window:up.y];

  [(_WKTouchEventGenerator *)self _sendMarkerHIDEventInWindow:window completionBlock:block];
}

- (void)moveToPoint:(CGPoint)point duration:(double)duration window:(id)window
{
  v6 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  [(_WKTouchEventGenerator *)self moveToPoints:&pointCopy touchCount:1 duration:window window:duration];
}

- (void)moveToPoint:(CGPoint)point duration:(double)duration window:(id)window completionBlock:(id)block
{
  [(_WKTouchEventGenerator *)self moveToPoint:point.x duration:point.y window:duration];

  [(_WKTouchEventGenerator *)self _sendMarkerHIDEventInWindow:window completionBlock:block];
}

- (void)receivedHIDEvent:(__IOHIDEvent *)event
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

- (void)_sendHIDEvent:(void *)event window:
{
  v2 = event[1];
  *event = &unk_1F10FBDE8;
  event[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return event;
}

- (uint64_t)_sendHIDEvent:(WTF *)this window:(void *)window
{
  v3 = *(this + 1);
  *this = &unk_1F10FBDE8;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return WTF::fastFree(this, window);
}

- (uint64_t)_sendHIDEvent:(uint64_t)event window:
{
  softLinkBKSHIDEventSetDigitizerInfo(*(event + 8), *(event + 16), 0, 0, 0, 0.0, 0.0);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = *(event + 8);

  return [mEMORY[0x1E69DC668] _enqueueHIDEvent:v3];
}

- (void)_sendMarkerHIDEventInWindow:(void *)window completionBlock:
{
  v2 = window[1];
  *window = &unk_1F10FBE10;
  window[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return window;
}

- (uint64_t)_sendMarkerHIDEventInWindow:(WTF *)this completionBlock:(void *)block
{
  v3 = *(this + 1);
  *this = &unk_1F10FBE10;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return WTF::fastFree(this, block);
}

- (uint64_t)_sendMarkerHIDEventInWindow:(uint64_t)window completionBlock:
{
  softLinkBKSHIDEventSetDigitizerInfo(*(window + 8), *(window + 16), 0, 0, 0, 0.0, 0.0);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = *(window + 8);

  return [mEMORY[0x1E69DC668] _enqueueHIDEvent:v3];
}

@end