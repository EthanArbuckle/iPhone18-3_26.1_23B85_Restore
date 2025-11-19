@interface WKTouchEventsGestureRecognizer
+ (void)initialize;
- (BOOL)_hasActiveTouchesForEvent:(id)a3;
- (WKTouchEvent)_touchEventForChildTouch:(SEL)a3 withParent:(id)a4;
- (WKTouchEventsGestureRecognizer)initWithContentView:(id)a3;
- (id).cxx_construct;
- (void)_processTouches:(id)a3 withEvent:(id)a4 type:(unsigned __int8)a5;
- (void)_recordTouches:(id)a3 ofType:(unsigned __int8)a4 forEvent:(id)a5;
- (void)_updateTapStateWithTouches:(id)a3;
- (void)_updateTapStateWithTouches:(id)a3 type:(unsigned __int8)a4;
- (void)cancel;
- (void)performAction;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation WKTouchEventsGestureRecognizer

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    do
    {
      incrementingTouchIdentifier = arc4random();
    }

    while ((incrementingTouchIdentifier + 1) < 2);
  }
}

- (id).cxx_construct
{
  *(self + 312) = 0;
  *(self + 328) = 0;
  *(self + 336) = 0;
  *(self + 43) = 0;
  *(self + 46) = 0;
  *(self + 47) = 0;
  *(self + 384) = 0;
  *(self + 424) = 0u;
  *(self + 408) = 0u;
  *(self + 392) = 0u;
  *(self + 440) = 0;
  *(self + 56) = 0;
  return self;
}

- (void)reset
{
  if (self->_wasExplicitlyCancelled && self->_lastTouchEvent.type <= 1u)
  {
    self->_lastTouchEvent.type = 3;
    m_size = self->_lastTouchEvent.touchPoints.m_size;
    if (m_size)
    {
      v4 = 0;
      v5 = (88 * m_size - 88) / 0x58;
      v6 = (v5 + 2) & 0x7FFFFFFFFFFFFFELL;
      v7 = vdupq_n_s64(v5);
      p_var3 = &self->_lastTouchEvent.touchPoints.m_buffer[1].var3;
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v4), xmmword_19E703CF0)));
        if (v9.i8[0])
        {
          *(p_var3 - 11) = 4;
        }

        if (v9.i8[4])
        {
          *p_var3 = 4;
        }

        v4 += 2;
        p_var3 += 22;
      }

      while (v6 != v4);
    }

    [(WKTouchEventsGestureRecognizer *)self performAction];
  }

  self->_passedHitTest = 0;
  self->_defaultPrevented = 0;
  self->_dispatchingTouchEvents = 0;
  self->_wasExplicitlyCancelled = 0;
  self->_originalGestureDistance = NAN;
  self->_originalGestureAngle = NAN;
  self->_isPotentialTap = 0;
  self->_lastTouchEvent.type = 0;
  self->_lastTouchEvent.timestamp = 0.0;
  v10 = vdupq_n_s64(0x7FF8000000000000uLL);
  self->_lastTouchEvent.locationInRootViewCoordinates = *MEMORY[0x1E695EFF8];
  *&self->_lastTouchEvent.scale = v10;
  self->_lastTouchEvent.inJavaScriptGesture = 0;
  self->_lastTouchEvent.isPotentialTap = 0;
  v27 = 0uLL;
  v11 = self->_lastTouchEvent.coalescedEvents.m_size;
  if (v11)
  {
    v12 = 112 * v11;
    p_predictedEvents = &self->_lastTouchEvent.coalescedEvents.m_buffer->predictedEvents;
    do
    {
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(p_predictedEvents, a2);
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&p_predictedEvents[-1], v14);
      m_buffer = p_predictedEvents[-2].m_buffer;
      if (m_buffer)
      {
        p_predictedEvents[-2].m_buffer = 0;
        p_predictedEvents[-2].m_capacity = 0;
        WTF::fastFree(m_buffer, a2);
      }

      p_predictedEvents += 7;
      v12 -= 112;
    }

    while (v12);
  }

  v16 = self->_lastTouchEvent.coalescedEvents.m_buffer;
  if (v16)
  {
    self->_lastTouchEvent.coalescedEvents.m_buffer = 0;
    self->_lastTouchEvent.coalescedEvents.m_capacity = 0;
    WTF::fastFree(v16, a2);
    v18 = v27.i64[1];
    v17 = v27.i64[0];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v10.i64[0] = 0;
  v27 = v10;
  self->_lastTouchEvent.coalescedEvents.m_buffer = v17;
  *&self->_lastTouchEvent.coalescedEvents.m_capacity = v18;
  WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, a2);
  v27 = 0uLL;
  v20 = self->_lastTouchEvent.predictedEvents.m_size;
  if (v20)
  {
    v21 = 112 * v20;
    v22 = &self->_lastTouchEvent.predictedEvents.m_buffer->predictedEvents;
    do
    {
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v19);
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22[-1], v23);
      v24 = v22[-2].m_buffer;
      if (v24)
      {
        v22[-2].m_buffer = 0;
        v22[-2].m_capacity = 0;
        WTF::fastFree(v24, v19);
      }

      v22 += 7;
      v21 -= 112;
    }

    while (v21);
  }

  v25 = self->_lastTouchEvent.predictedEvents.m_buffer;
  if (v25)
  {
    self->_lastTouchEvent.predictedEvents.m_buffer = 0;
    self->_lastTouchEvent.predictedEvents.m_capacity = 0;
    WTF::fastFree(v25, v19);
  }

  self->_lastTouchEvent.predictedEvents.m_buffer = v27.i64[0];
  v26 = v27.i64[1];
  v27 = 0uLL;
  *&self->_lastTouchEvent.predictedEvents.m_capacity = v26;
  WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v19);
  self->_lastTouchesBeganTime = 0.0;
  if (self->_lastTouchesBeganLocation.__engaged_)
  {
    self->_lastTouchesBeganLocation.__engaged_ = 0;
  }
}

- (WKTouchEventsGestureRecognizer)initWithContentView:(id)a3
{
  v10.receiver = self;
  v10.super_class = WKTouchEventsGestureRecognizer;
  v4 = [(WKTouchEventsGestureRecognizer *)&v10 initWithTarget:0 action:0];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    m_ptr = v4->_activeTouchesByIdentifier.m_ptr;
    v4->_activeTouchesByIdentifier.m_ptr = v6;
    if (m_ptr)
    {
    }

    objc_storeWeak(&v4->_contentView, a3);
    [(WKTouchEventsGestureRecognizer *)v4 reset];
  }

  return v4;
}

- (void)cancel
{
  self->_wasExplicitlyCancelled = 0;
  v3 = [(WKTouchEventsGestureRecognizer *)self state];
  if (v3 <= 2)
  {
    v4 = qword_19E703DD8[v3];
    self->_wasExplicitlyCancelled = 1;

    [(WKTouchEventsGestureRecognizer *)self setState:v4];
  }
}

- (void)_updateTapStateWithTouches:(id)a3
{
  if ([a3 count] == 1)
  {
    v5 = [a3 anyObject];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6;
    [v5 locationInView:{-[WKTouchEventsGestureRecognizer view](self, "view")}];
    p_lastTouchesBeganLocation = &self->_lastTouchesBeganLocation;
    if (!self->_lastTouchesBeganLocation.__engaged_)
    {
      self->_lastTouchesBeganTime = v7;
      p_lastTouchesBeganLocation->var0.__val_.x = v8;
      self->_lastTouchesBeganLocation.var0.__val_.y = v9;
      v11 = 1;
      self->_lastTouchesBeganLocation.__engaged_ = 1;
      goto LABEL_7;
    }

    if (v7 - self->_lastTouchesBeganTime <= 0.75 && vabdd_f64(p_lastTouchesBeganLocation->var0.__val_.x, v8) <= 45.0)
    {
      v11 = vabdd_f64(self->_lastTouchesBeganLocation.var0.__val_.y, v9) <= 45.0;
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_7:
  self->_lastTouchEvent.isPotentialTap = v11;
  self->_isPotentialTap = v11;
}

- (void)_updateTapStateWithTouches:(id)a3 type:(unsigned __int8)a4
{
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        self->_lastTouchEvent.isPotentialTap = 0;
        self->_isPotentialTap = 0;
      }

      return;
    }
  }

  else
  {
    if (!a4)
    {
LABEL_9:
      [(WKTouchEventsGestureRecognizer *)self _updateTapStateWithTouches:a3];
      return;
    }

    if (a4 != 1)
    {
      return;
    }
  }

  if (self->_isPotentialTap)
  {
    goto LABEL_9;
  }
}

- (WKTouchEvent)_touchEventForChildTouch:(SEL)a3 withParent:(id)a4
{
  [a4 locationInView:0];
  [-[WKTouchEventsGestureRecognizer view](self "view")];
  v12 = v11;
  v14 = v13;
  v15 = [(WKTouchEventsGestureRecognizer *)self contentView];
  v42 = v15;
  if (v15)
  {
    v16 = v15;
    v15 = v42;
  }

  v41 = v12;
  v44.x = v12;
  v44.y = v14;
  v17 = mapRootViewToViewport(v44, v15);
  v19 = v18;
  var2 = a5->var2;
  v21 = [a4 phase];
  [a4 majorRadius];
  v23 = v22;
  [a4 maximumPossibleForce];
  v24 = 0.0;
  if (v25 > 0.0)
  {
    [a4 force];
    v27 = v26;
    [a4 maximumPossibleForce];
    v24 = v27 / v28;
  }

  if ([a4 type] == 2)
  {
    [a4 altitudeAngle];
    v40 = v29;
    [a4 azimuthAngleInView:{objc_msgSend(-[WKTouchEventsGestureRecognizer view](self, "view"), "window")}];
    v31 = v30;
    v32 = v19;
    v33 = v17;
    v34 = 1;
  }

  else
  {
    v32 = v19;
    v33 = v17;
    v34 = 0;
    v31 = 0;
    v40 = 0;
  }

  retstr->timestamp = 0.0;
  retstr->scale = 0.0;
  retstr->rotation = 0.0;
  retstr->inJavaScriptGesture = 0;
  retstr->touchPoints = 0u;
  retstr->coalescedEvents = 0u;
  retstr->predictedEvents = 0u;
  retstr->isPotentialTap = 0;
  retstr->type = 1;
  [a4 timestamp];
  v36 = v35;
  v37 = CACurrentMediaTime();
  retstr->timestamp = *MEMORY[0x1E695E468] + CFAbsoluteTimeGetCurrent() - (v37 - v36);
  retstr->locationInRootViewCoordinates.x = v41;
  retstr->locationInRootViewCoordinates.y = v14;
  v38 = WTF::fastMalloc(0x58);
  *v38 = v41;
  *(v38 + 8) = v14;
  *(v38 + 16) = v33;
  *(v38 + 24) = v32;
  *(v38 + 32) = var2;
  *(v38 + 40) = v21;
  *(v38 + 48) = v23;
  *(v38 + 56) = v24;
  *(v38 + 64) = v40;
  *(v38 + 72) = v31;
  *(v38 + 80) = v34;
  retstr->touchPoints.m_buffer = v38;
  *&retstr->touchPoints.m_capacity = 0x100000001;
  result = v42;
  if (v42)
  {
  }

  return result;
}

- (void)_recordTouches:(id)a3 ofType:(unsigned __int8)a4 forEvent:(id)a5
{
  v5 = a4;
  v143 = *MEMORY[0x1E69E9840];
  p_lastTouchEvent = &self->_lastTouchEvent;
  self->_lastTouchEvent.type = a4;
  self->_lastTouchEvent.inJavaScriptGesture = 0;
  v9 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  self->_dispatchingTouchEvents = 1;
  v10 = [a3 count];
  v11 = v10;
  m_size = p_lastTouchEvent->touchPoints.m_size;
  if (v10 != m_size)
  {
    if (v10 > m_size)
    {
      m_capacity = p_lastTouchEvent->touchPoints.m_capacity;
      if (v10 > m_capacity)
      {
        if (m_capacity + (m_capacity >> 1) <= m_capacity + 1)
        {
          v14 = m_capacity + 1;
        }

        else
        {
          v14 = m_capacity + (m_capacity >> 1);
        }

        if (v14 <= v10)
        {
          v14 = v10;
        }

        if (v14 >= 0x2E8BA2F)
        {
          __break(0xC471u);
LABEL_116:
          JUMPOUT(0x19DE66200);
        }

        m_buffer = p_lastTouchEvent->touchPoints.m_buffer;
        if (v14 <= 0x10)
        {
          v14 = 16;
        }

        v16 = 88 * v14;
        v17 = WTF::fastMalloc((88 * v14));
        p_lastTouchEvent->touchPoints.m_capacity = v16 / 0x58;
        p_lastTouchEvent->touchPoints.m_buffer = v17;
        if (m_size)
        {
          v19 = 88 * m_size;
          v20 = m_buffer;
          do
          {
            v21 = *(v20 + 1);
            *v17 = *v20;
            *(v17 + 16) = v21;
            v22 = *(v20 + 2);
            v23 = *(v20 + 3);
            v24 = *(v20 + 4);
            *(v17 + 80) = *(v20 + 10);
            *(v17 + 48) = v23;
            *(v17 + 64) = v24;
            *(v17 + 32) = v22;
            v17 += 88;
            v20 = (v20 + 88);
            v19 -= 88;
          }

          while (v19);
        }

        if (m_buffer)
        {
          if (p_lastTouchEvent->touchPoints.m_buffer == m_buffer)
          {
            p_lastTouchEvent->touchPoints.m_buffer = 0;
            p_lastTouchEvent->touchPoints.m_capacity = 0;
          }

          WTF::fastFree(m_buffer, v18);
        }
      }

      v25 = p_lastTouchEvent->touchPoints.m_buffer;
      if (v25)
      {
        v26 = p_lastTouchEvent->touchPoints.m_size;
        if (v11 != v26)
        {
          bzero(&v25[v26], 88 * ((88 * v11 - 88 * v26 - 88) / 0x58) + 88);
        }
      }
    }

    p_lastTouchEvent->touchPoints.m_size = v11;
  }

  [objc_msgSend(a3 "anyObject")];
  v28 = CACurrentMediaTime() - v27;
  v29 = *MEMORY[0x1E695E468];
  p_lastTouchEvent->timestamp = v29 + CFAbsoluteTimeGetCurrent() - v28;
  v127[0] = 0uLL;
  v32 = p_lastTouchEvent->coalescedEvents.m_size;
  if (v32)
  {
    v33 = 112 * v32;
    p_predictedEvents = &p_lastTouchEvent->coalescedEvents.m_buffer->predictedEvents;
    do
    {
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(p_predictedEvents, v30);
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(p_predictedEvents - 16, v35);
      v36 = *(p_predictedEvents - 32);
      if (v36)
      {
        *(p_predictedEvents - 32) = 0;
        *(p_predictedEvents - 24) = 0;
        WTF::fastFree(v36, v30);
      }

      p_predictedEvents += 112;
      v33 -= 112;
    }

    while (v33);
  }

  v37 = p_lastTouchEvent->coalescedEvents.m_buffer;
  if (v37)
  {
    p_lastTouchEvent->coalescedEvents.m_buffer = 0;
    p_lastTouchEvent->coalescedEvents.m_capacity = 0;
    WTF::fastFree(v37, v30);
    v39 = *(&v127[0] + 1);
    v38 = *&v127[0];
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  *&v31 = 0;
  v127[0] = v31;
  p_lastTouchEvent->coalescedEvents.m_buffer = v38;
  *&p_lastTouchEvent->coalescedEvents.m_capacity = v39;
  WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v127, v30);
  v127[0] = 0uLL;
  v41 = p_lastTouchEvent->predictedEvents.m_size;
  if (v41)
  {
    v42 = 112 * v41;
    v43 = &p_lastTouchEvent->predictedEvents.m_buffer->predictedEvents;
    do
    {
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v43, v40);
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v43 - 16, v44);
      v45 = *(v43 - 32);
      if (v45)
      {
        *(v43 - 32) = 0;
        *(v43 - 24) = 0;
        WTF::fastFree(v45, v40);
      }

      v43 += 112;
      v42 -= 112;
    }

    while (v42);
  }

  v46 = p_lastTouchEvent->predictedEvents.m_buffer;
  if (v46)
  {
    p_lastTouchEvent->predictedEvents.m_buffer = 0;
    p_lastTouchEvent->predictedEvents.m_capacity = 0;
    WTF::fastFree(v46, v40);
  }

  p_lastTouchEvent->predictedEvents.m_buffer = *&v127[0];
  v47 = *(&v127[0] + 1);
  v127[0] = 0uLL;
  *&p_lastTouchEvent->predictedEvents.m_capacity = v47;
  WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v127, v40);
  v115 = [(WKTouchEventsGestureRecognizer *)self contentView];
  if (v115)
  {
    v48 = v115;
  }

  [(NSMapTable *)self->_activeTouchesByIdentifier.m_ptr removeAllObjects];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v49 = [a3 countByEnumeratingWithState:&v136 objects:v142 count:16];
  v120 = v8;
  v121 = v9;
  if (!v49)
  {
    goto LABEL_110;
  }

  v110 = v11;
  v122 = 0;
  v50 = 0;
  v113 = *v137;
  v51 = v9;
  v52 = v8;
  v53 = v9;
  v54 = v8;
  v119 = v8;
  v112 = v5;
  do
  {
    v55 = 0;
    v116 = v49;
    do
    {
      if (*v137 != v113)
      {
        objc_enumerationMutation(a3);
      }

      v118 = v55;
      v56 = *(*(&v136 + 1) + 8 * v55);
      AssociatedObject = objc_getAssociatedObject(v56, &associatedTouchIdentifierKey);
      v58 = WTF::dynamic_objc_cast<NSNumber>(AssociatedObject);
      v59 = [v56 _isPointerTouch];
      if (v5)
      {
        v60 = 0;
      }

      else
      {
        v60 = v59;
      }

      if ((v60 & 1) != 0 || !v58)
      {
        if (incrementingTouchIdentifier == -2)
        {
          v61 = 1;
        }

        else
        {
          v61 = incrementingTouchIdentifier + 1;
        }

        incrementingTouchIdentifier = v61;
        v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v110];
        objc_setAssociatedObject(v56, &associatedTouchIdentifierKey, v58, 1);
      }

      [(NSMapTable *)self->_activeTouchesByIdentifier.m_ptr setObject:v56 forKey:v58, v110];
      if (v122 >= p_lastTouchEvent->touchPoints.m_size)
      {
        __break(0xC471u);
        goto LABEL_116;
      }

      v62 = p_lastTouchEvent->touchPoints.m_buffer;
      [v56 locationInView:0];
      [-[WKTouchEventsGestureRecognizer view](self "view")];
      x = v144.x;
      y = v144.y;
      v67 = &v62[v122];
      v67->var0 = v144;
      v67->var1.x = mapRootViewToViewport(v144, v115);
      v67->var1.y = v68;
      v67->var2 = [v58 unsignedIntValue];
      v67->var3 = [v56 phase];
      [v56 majorRadius];
      v67->var4 = v69;
      [v56 maximumPossibleForce];
      v70 = 0.0;
      if (v71 > 0.0)
      {
        [v56 force];
        v73 = v72;
        [v56 maximumPossibleForce];
        v70 = v73 / v74;
      }

      v67->var5 = v70;
      v117 = v50;
      if ([v56 type] == 2)
      {
        v67->var8 = 1;
        [v56 altitudeAngle];
        v67->var6 = v75;
        [v56 azimuthAngleInView:{objc_msgSend(-[WKTouchEventsGestureRecognizer view](self, "view"), "window")}];
        v67->var7 = v76;
      }

      else
      {
        v67->var6 = 0.0;
        v67->var7 = 0.0;
        v67->var8 = 0;
      }

      if (v5 == 1 && !v122)
      {
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v77 = [a5 coalescedTouchesForTouch:v56];
        v78 = [v77 countByEnumeratingWithState:&v132 objects:v141 count:16];
        if (v78)
        {
          v79 = *v133;
          do
          {
            for (i = 0; i != v78; ++i)
            {
              if (*v133 != v79)
              {
                objc_enumerationMutation(v77);
              }

              [(WKTouchEventsGestureRecognizer *)self _touchEventForChildTouch:*(*(&v132 + 1) + 8 * i) withParent:v67];
              v81 = p_lastTouchEvent->coalescedEvents.m_size;
              if (v81 == p_lastTouchEvent->coalescedEvents.m_capacity)
              {
                WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WKTouchEvent>(&p_lastTouchEvent->coalescedEvents, v127);
              }

              else
              {
                WebKit::WKTouchEvent::WKTouchEvent(&p_lastTouchEvent->coalescedEvents.m_buffer[v81], v127);
                ++p_lastTouchEvent->coalescedEvents.m_size;
              }

              WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v131, v82);
              WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v130, v83);
              v85 = v128;
              if (v128)
              {
                v128 = 0;
                v129 = 0;
                WTF::fastFree(v85, v84);
              }
            }

            v78 = [v77 countByEnumeratingWithState:&v132 objects:v141 count:16];
          }

          while (v78);
        }

        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v86 = [a5 predictedTouchesForTouch:v56];
        v87 = [v86 countByEnumeratingWithState:&v123 objects:v140 count:16];
        if (v87)
        {
          v88 = *v124;
          do
          {
            for (j = 0; j != v87; ++j)
            {
              if (*v124 != v88)
              {
                objc_enumerationMutation(v86);
              }

              [(WKTouchEventsGestureRecognizer *)self _touchEventForChildTouch:*(*(&v123 + 1) + 8 * j) withParent:v67];
              v90 = p_lastTouchEvent->predictedEvents.m_size;
              if (v90 == p_lastTouchEvent->predictedEvents.m_capacity)
              {
                WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WKTouchEvent>(&p_lastTouchEvent->predictedEvents, v127);
              }

              else
              {
                WebKit::WKTouchEvent::WKTouchEvent(&p_lastTouchEvent->predictedEvents.m_buffer[v90], v127);
                ++p_lastTouchEvent->predictedEvents.m_size;
              }

              WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v131, v91);
              WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v130, v92);
              v94 = v128;
              if (v128)
              {
                v128 = 0;
                v129 = 0;
                WTF::fastFree(v94, v93);
              }
            }

            v87 = [v86 countByEnumeratingWithState:&v123 objects:v140 count:16];
          }

          while (v87);
        }
      }

      ++v122;
      v95 = v67->var3 - 3;
      v96 = v51 + x;
      v97 = v52 + y;
      v50 = v117;
      if (v117 == 1)
      {
        v98 = x;
      }

      else
      {
        v98 = v53;
      }

      if (v117 == 1)
      {
        v99 = y;
      }

      else
      {
        v99 = v54;
      }

      if (v117)
      {
        v100 = v117 + 1;
      }

      else
      {
        v100 = 1;
      }

      if (v117)
      {
        v101 = v9;
      }

      else
      {
        v98 = v53;
        v99 = v54;
        v101 = x;
      }

      v103 = v119;
      v102 = v120;
      if (v117)
      {
        v104 = v119;
      }

      else
      {
        v104 = y;
      }

      v105 = v121;
      if (v95 <= 1)
      {
        v105 = v121 + x;
        v102 = v120 + y;
      }

      v120 = v102;
      v121 = v105;
      if (v95 > 1)
      {
        v51 = v51 + x;
        v52 = v52 + y;
        v50 = v100;
        v53 = v98;
        v54 = v99;
        v9 = v101;
        v103 = v104;
      }

      v119 = v103;
      v55 = v118 + 1;
      v5 = v112;
    }

    while (v118 + 1 != v116);
    v49 = [a3 countByEnumeratingWithState:&v136 objects:v142 count:{16, v96, v97}];
  }

  while (v49);
  v11 = v110;
  if (!v50)
  {
LABEL_110:
    p_lastTouchEvent->locationInRootViewCoordinates.x = v121 / v11;
    p_lastTouchEvent->locationInRootViewCoordinates.y = v120 / v11;
    p_lastTouchEvent->scale = 0.0;
    p_lastTouchEvent->rotation = 0.0;
    goto LABEL_111;
  }

  p_lastTouchEvent->scale = 0.0;
  p_lastTouchEvent->locationInRootViewCoordinates.x = v51 / v50;
  p_lastTouchEvent->locationInRootViewCoordinates.y = v52 / v50;
  p_lastTouchEvent->rotation = 0.0;
  if (v50 != 1)
  {
    v106 = (v54 - v119) * (v54 - v119) + (v53 - v9) * (v53 - v9);
    p_lastTouchEvent->scale = sqrtf(v106) / self->_originalGestureDistance;
    v107 = v53 - v9;
    v108 = v54 - v119;
    v109 = atan2f(v107, v108) * 180.0 * 0.318309886;
    p_lastTouchEvent->rotation = self->_originalGestureAngle - v109;
    p_lastTouchEvent->inJavaScriptGesture = 1;
  }

LABEL_111:
  [(WKTouchEventsGestureRecognizer *)self _updateTapStateWithTouches:a3 type:v5];
  if (v115)
  {
  }
}

- (void)performAction
{
  Weak = objc_loadWeak(&self->_contentView);

  [Weak _touchEventsRecognized];
}

- (BOOL)_hasActiveTouchesForEvent:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 touchesForGestureRecognizer:{self, 0}];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * v7) phase] < 3)
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (void)_processTouches:(id)a3 withEvent:(id)a4 type:(unsigned __int8)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 phase] != 2)
        {
          v15 = [v14 phase];
          if (v11 <= v15)
          {
            v11 = v15;
          }
        }
      }

      v10 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
    if (v11 <= 7)
    {
      v16 = 0x201000302010100uLL >> (8 * v11);
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v5 == v16)
  {
    [(WKTouchEventsGestureRecognizer *)self _recordTouches:a3 ofType:v5 forEvent:a4];
    [(WKTouchEventsGestureRecognizer *)self performAction];
    if (self->_defaultPrevented)
    {
      if ([(WKTouchEventsGestureRecognizer *)self state])
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      [(WKTouchEventsGestureRecognizer *)self setState:v17];
    }

    if (v5 >= 2 && ![(WKTouchEventsGestureRecognizer *)self _hasActiveTouchesForEvent:a4])
    {
      v18 = [(WKTouchEventsGestureRecognizer *)self state];
      v19 = 3;
      if (v5 != 2)
      {
        v19 = 4;
      }

      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = 5;
      }

      [(WKTouchEventsGestureRecognizer *)self setState:v20];
    }
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = [a4 touchesForGestureRecognizer:self];
  v8 = [(WKTouchEventsGestureRecognizer *)self contentView];
  if (v8)
  {
    v7 = v8;
  }

  if (!self->_passedHitTest)
  {
    if ([(WKContentView *)v8 _shouldIgnoreTouchEvent:a4])
    {
      [(WKTouchEventsGestureRecognizer *)self setState:5];
      goto LABEL_8;
    }

    self->_passedHitTest = 1;
  }

  [(WKTouchEventsGestureRecognizer *)self _processTouches:v6 withEvent:a4 type:0];
LABEL_8:
  if (v8)
  {
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = [a4 touchesForGestureRecognizer:self];

  [(WKTouchEventsGestureRecognizer *)self _processTouches:v6 withEvent:a4 type:1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = [a4 touchesForGestureRecognizer:self];

  [(WKTouchEventsGestureRecognizer *)self _processTouches:v6 withEvent:a4 type:2];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = [a4 touchesForGestureRecognizer:self];

  [(WKTouchEventsGestureRecognizer *)self _processTouches:v6 withEvent:a4 type:3];
}

@end