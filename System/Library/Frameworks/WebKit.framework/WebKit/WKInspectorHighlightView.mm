@interface WKInspectorHighlightView
- (WKInspectorHighlightView)initWithFrame:(CGRect)frame;
- (id).cxx_construct;
- (void)_createLayers:(unint64_t)layers;
- (void)_layoutForNodeHighlight:(const void *)highlight offset:(unsigned int)offset;
- (void)_layoutForNodeListHighlight:(const void *)highlight;
- (void)_layoutForRectsHighlight:(const void *)highlight;
- (void)_removeAllLayers;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)update:(const void *)update scale:(double)scale frame:(const FloatRect *)frame;
@end

@implementation WKInspectorHighlightView

- (WKInspectorHighlightView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = WKInspectorHighlightView;
  v3 = [(WKInspectorHighlightView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    m_ptr = v3->_layers.m_ptr;
    v3->_layers.m_ptr = v4;
    if (m_ptr)
    {
    }

    [(WKInspectorHighlightView *)v3 setOpaque:0];
    [(WKInspectorHighlightView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)dealloc
{
  [(WKInspectorHighlightView *)self _removeAllLayers];
  v3.receiver = self;
  v3.super_class = WKInspectorHighlightView;
  [(WKInspectorHighlightView *)&v3 dealloc];
}

- (void)_removeAllLayers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  m_ptr = self->_layers.m_ptr;
  v4 = [(NSMutableArray *)m_ptr countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(m_ptr);
        }

        [*(*(&v8 + 1) + 8 * i) removeFromSuperlayer];
      }

      v5 = [(NSMutableArray *)m_ptr countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_layers.m_ptr removeAllObjects];
}

- (void)_createLayers:(unint64_t)layers
{
  v5 = [(NSMutableArray *)self->_layers.m_ptr count];
  if (layers && v5 != layers)
  {
    do
    {
      v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
      [(WKInspectorHighlightView *)self frame];
      v8 = v7;
      [(WKInspectorHighlightView *)self frame];
      [v6 setPosition:{-v8, -v9}];
      [(NSMutableArray *)self->_layers.m_ptr addObject:v6];
      [-[WKInspectorHighlightView layer](self "layer")];
      if (v6)
      {
      }

      --layers;
    }

    while (layers);
  }
}

- (void)_layoutForNodeHighlight:(const void *)highlight offset:(unsigned int)offset
{
  v7 = [(NSMutableArray *)self->_layers.m_ptr count];
  v8 = offset + 4;
  if (v7 >= v8 && *(highlight + 15) >= v8)
  {
    v9 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:offset];
    v10 = offset + 1;
    v11 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:v10];
    v12 = offset + 2;
    v13 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:v12];
    v14 = offset + 3;
    v15 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:v14];
    v17 = *(highlight + 15);
    if (v17 <= offset)
    {
      goto LABEL_20;
    }

    v18 = *(highlight + 6);
    v19 = (v18 + 32 * offset);
    v20 = v19[1];
    v39[0] = *v19;
    v39[1] = v20;
    if (v17 <= v10)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD669ECLL);
    }

    v21 = (v18 + 32 * v10);
    v22 = v21[1];
    v38[0] = *v21;
    v38[1] = v22;
    if (v17 <= v12)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD669F4);
    }

    v23 = (v18 + 32 * v12);
    v24 = v23[1];
    v37[0] = *v23;
    v37[1] = v24;
    if (v17 <= v14)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19DD669E4);
    }

    v25 = v15;
    v26 = (v18 + 32 * v14);
    v27 = v26[1];
    v36[0] = *v26;
    v36[1] = v27;
    WebCore::cachedCGColor(&cf, (highlight + 32), v16);
    [(CAShapeLayer *)v9 setFillColor:cf];
    v29 = cf;
    cf = 0;
    if (v29)
    {
      CFRelease(v29);
    }

    WebCore::cachedCGColor(&cf, (highlight + 24), v28);
    [(CAShapeLayer *)v11 setFillColor:cf];
    v31 = cf;
    cf = 0;
    if (v31)
    {
      CFRelease(v31);
    }

    WebCore::cachedCGColor(&cf, (highlight + 16), v30);
    [(CAShapeLayer *)v13 setFillColor:cf];
    v33 = cf;
    cf = 0;
    if (v33)
    {
      CFRelease(v33);
    }

    WebCore::cachedCGColor(&cf, highlight, v32);
    [(CAShapeLayer *)v25 setFillColor:cf];
    v34 = cf;
    cf = 0;
    if (v34)
    {
      CFRelease(v34);
    }

    layerPathWithHole(v9, v39, v38);
    layerPathWithHole(v11, v38, v37);
    layerPathWithHole(v13, v37, v36);
    layerPath(v25, v36);
  }
}

- (void)_layoutForNodeListHighlight:(const void *)highlight
{
  v3 = *(highlight + 15);
  if (v3)
  {
    [(WKInspectorHighlightView *)self _createLayers:v3 & 0xFFFFFFFC];
    if (v3 >= 4)
    {
      v6 = 0;
      v7 = v3 >> 2;
      do
      {
        [(WKInspectorHighlightView *)self _layoutForNodeHighlight:highlight offset:v6];
        v6 = (v6 + 4);
        --v7;
      }

      while (v7);
    }
  }
}

- (void)_layoutForRectsHighlight:(const void *)highlight
{
  v3 = *(highlight + 15);
  if (v3)
  {
    [(WKInspectorHighlightView *)self _createLayers:*(highlight + 15)];
    WebCore::cachedCGColor(&cf, highlight, v6);
    v7 = 0;
    v8 = 0;
    v9 = 32 * v3;
    do
    {
      v10 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:v8];
      [(CAShapeLayer *)v10 setFillColor:cf];
      if (v8 >= *(highlight + 15))
      {
        __break(0xC471u);
        return;
      }

      layerPath(v10, (*(highlight + 6) + v7));
      ++v8;
      v7 += 32;
    }

    while (v9 != v7);
    v11 = cf;
    cf = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

- (void)drawRect:(CGRect)rect
{
  v33 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  v30.receiver = self;
  v30.super_class = WKInspectorHighlightView;
  [(WKInspectorHighlightView *)&v30 drawRect:?];
  p_highlight = &self->_highlight;
  if (self->_highlight.__engaged_)
  {
    UIGraphicsGetCurrentContext();
    WebCore::GraphicsContextCG::GraphicsContextCG();
    WebCore::FloatRect::FloatRect(&v24, &rectCopy);
    WebCore::GraphicsContextCG::clip(v32, &v24);
    [(WKInspectorHighlightView *)self frame];
    v6 = v5;
    [(WKInspectorHighlightView *)self frame];
    v7 = v6;
    *&v8 = v8;
    WebCore::GraphicsContextCG::translate(v32, -v7, -*&v8);
    if (!self->_highlight.__engaged_)
    {
      goto LABEL_20;
    }

    m_size = self->_highlight.var0.__val_.gridHighlightOverlays.m_size;
    if (m_size)
    {
      m_buffer = self->_highlight.var0.__val_.gridHighlightOverlays.m_buffer;
      v11 = 72 * m_size;
      do
      {
        WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(&v24, m_buffer);
        WebCore::InspectorOverlay::drawGridOverlay(v32, &v24, v12);
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v13);
        WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v14);
        v16 = v26;
        if (v26)
        {
          v26 = 0;
          v27 = 0;
          WTF::fastFree(v16, v15);
        }

        v17 = v24.m_size;
        if (v24.m_size)
        {
          v24.m_size = 0;
          v25 = 0;
          WTF::fastFree(v17, v15);
        }

        if ((*&v24.m_location & 0x8000000000000) != 0)
        {
          v18 = (*&v24.m_location & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((*&v24.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v15);
          }
        }

        m_buffer = (m_buffer + 72);
        v11 -= 72;
      }

      while (v11);
      if (!p_highlight->__engaged_)
      {
LABEL_20:
        __break(1u);
      }
    }

    v19 = p_highlight->var0.__val_.flexHighlightOverlays.m_size;
    if (v19)
    {
      v20 = p_highlight->var0.__val_.flexHighlightOverlays.m_buffer;
      v21 = 136 * v19;
      do
      {
        WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(&v24, v20);
        WebCore::InspectorOverlay::drawFlexOverlay(v32, &v24, v22);
        WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(&v24, v23);
        v20 = (v20 + 136);
        v21 -= 136;
      }

      while (v21);
    }

    WebCore::GraphicsContextCG::~GraphicsContextCG(v32);
  }
}

- (void)update:(const void *)update scale:(double)scale frame:(const FloatRect *)frame
{
  selfCopy = self;
  [(WKInspectorHighlightView *)self _removeAllLayers];
  p_highlight = &selfCopy->_highlight;
  if (!selfCopy->_highlight.__engaged_)
  {
    v24 = *update;
    p_highlight->var0.__val_.contentColor.m_colorAndFlags = *update;
    if ((v24 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v24 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v25 = *(update + 1);
    selfCopy->_highlight.var0.__val_.contentOutlineColor.m_colorAndFlags = v25;
    if ((v25 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v25 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v26 = *(update + 2);
    selfCopy->_highlight.var0.__val_.paddingColor.m_colorAndFlags = v26;
    if ((v26 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v26 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v27 = *(update + 3);
    selfCopy->_highlight.var0.__val_.borderColor.m_colorAndFlags = v27;
    if ((v27 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v28 = *(update + 4);
    selfCopy->_highlight.var0.__val_.marginColor.m_colorAndFlags = v28;
    if ((v28 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v28 & 0xFFFFFFFFFFFFLL), 1u);
    }

    selfCopy->_highlight.var0.__val_.type = *(update + 40);
    WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&selfCopy->_highlight.var0.__val_.quads, update + 48);
    v29 = *(update + 19);
    selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer = 0;
    *&selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_capacity = 0;
    selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_size = v29;
    if (v29)
    {
      if (v29 >= 0x38E38E4)
      {
        goto LABEL_126;
      }

      v30 = 72 * v29;
      v31 = WTF::fastMalloc((72 * v29));
      selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_capacity = v30 / 0x48;
      selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer = v31;
      v32 = *(update + 19);
      if (v32)
      {
        v33 = *(update + 8);
        v34 = 72 * v32;
        do
        {
          v31 = (WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(v31, v33) + 72);
          v33 = (v33 + 72);
          v34 -= 72;
        }

        while (v34);
      }
    }

    v35 = *(update + 23);
    selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_buffer = 0;
    *&selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_capacity = 0;
    selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_size = v35;
    if (!v35)
    {
LABEL_45:
      selfCopy->_highlight.var0.__val_.usePageCoordinates = *(update + 96);
      selfCopy->_highlight.__engaged_ = 1;
      goto LABEL_109;
    }

    if (v35 < 0x1E1E1E2)
    {
      v36 = 136 * v35;
      v37 = WTF::fastMalloc((136 * v35));
      selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_capacity = v36 / 0x88;
      selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_buffer = v37;
      v38 = *(update + 23);
      if (v38)
      {
        v39 = *(update + 10);
        v40 = 136 * v38;
        do
        {
          v37 = (WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(v37, v39) + 136);
          v39 = (v39 + 136);
          v40 -= 136;
        }

        while (v40);
      }

      goto LABEL_45;
    }

LABEL_126:
    __break(0xC471u);
    JUMPOUT(0x19DD67C5CLL);
  }

  m_colorAndFlags = p_highlight->var0.__val_.contentColor.m_colorAndFlags;
  if (p_highlight->var0.__val_.contentColor.m_colorAndFlags != *update)
  {
    if ((m_colorAndFlags & 0x8000000000000) != 0)
    {
      v90 = (m_colorAndFlags & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v90);
        WTF::fastFree(v90, v9);
      }
    }

    v12 = *update;
    p_highlight->var0.__val_.contentColor.m_colorAndFlags = *update;
    if ((v12 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v13 = selfCopy->_highlight.var0.__val_.contentOutlineColor.m_colorAndFlags;
  if (v13 != *(update + 1))
  {
    if ((v13 & 0x8000000000000) != 0)
    {
      v91 = (v13 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v13 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v91);
        WTF::fastFree(v91, v9);
      }
    }

    v14 = *(update + 1);
    selfCopy->_highlight.var0.__val_.contentOutlineColor.m_colorAndFlags = v14;
    if ((v14 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v15 = selfCopy->_highlight.var0.__val_.paddingColor.m_colorAndFlags;
  if (v15 != *(update + 2))
  {
    if ((v15 & 0x8000000000000) != 0)
    {
      v92 = (v15 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v92);
        WTF::fastFree(v92, v9);
      }
    }

    v16 = *(update + 2);
    selfCopy->_highlight.var0.__val_.paddingColor.m_colorAndFlags = v16;
    if ((v16 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v17 = selfCopy->_highlight.var0.__val_.borderColor.m_colorAndFlags;
  if (v17 != *(update + 3))
  {
    if ((v17 & 0x8000000000000) != 0)
    {
      v93 = (v17 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v93);
        WTF::fastFree(v93, v9);
      }
    }

    v18 = *(update + 3);
    selfCopy->_highlight.var0.__val_.borderColor.m_colorAndFlags = v18;
    if ((v18 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v18 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v19 = selfCopy->_highlight.var0.__val_.marginColor.m_colorAndFlags;
  if (v19 != *(update + 4))
  {
    if ((v19 & 0x8000000000000) != 0)
    {
      v94 = (v19 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v19 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v94);
        WTF::fastFree(v94, v9);
      }
    }

    v20 = *(update + 4);
    selfCopy->_highlight.var0.__val_.marginColor.m_colorAndFlags = v20;
    if ((v20 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v20 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  selfCopy->_highlight.var0.__val_.type = *(update + 40);
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&selfCopy->_highlight.var0.__val_.quads, update + 48);
  if (p_highlight != update)
  {
    m_size = selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_size;
    v23 = *(update + 19);
    if (m_size <= v23)
    {
      if (v23 > selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_capacity)
      {
        WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&selfCopy->_highlight.var0.__val_.gridHighlightOverlays, 0);
        WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&selfCopy->_highlight.var0.__val_.gridHighlightOverlays, *(update + 19));
        m_size = selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_size;
      }
    }

    else
    {
      WTF::VectorTypeOperations<WebCore::InspectorOverlayHighlight::GridHighlightOverlay>::destruct((selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer + 72 * v23), (selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer + 72 * m_size));
      selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_size = v23;
      m_size = v23;
    }

    v41 = *(update + 8);
    if (m_size)
    {
      frameCopy = frame;
      v96 = selfCopy;
      v42 = (v41 + 72 * m_size);
      m_buffer = selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer;
      do
      {
        v44 = *m_buffer;
        if (*m_buffer != *v41)
        {
          if ((v44 & 0x8000000000000) != 0)
          {
            v67 = (v44 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v44 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v67);
              WTF::fastFree(v67, v21);
            }
          }

          v45 = *v41;
          *m_buffer = *v41;
          if ((v45 & 0x8000000000000) != 0)
          {
            atomic_fetch_add((v45 & 0xFFFFFFFFFFFFLL), 1u);
          }
        }

        if (v41 == m_buffer)
        {
          WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(m_buffer + 24, v41 + 24);
        }

        else
        {
          v46 = *(m_buffer + 5);
          v47 = *(v41 + 5);
          if (v46 <= v47)
          {
            if (v47 > *(m_buffer + 4))
            {
              WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(m_buffer + 8, 0);
              WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(m_buffer + 8, *(v41 + 5));
              v46 = *(m_buffer + 5);
            }
          }

          else
          {
            *(m_buffer + 5) = v47;
            v46 = v47;
          }

          if (v46)
          {
            memmove(*(m_buffer + 1), *(v41 + 1), 20 * v46);
            v46 = *(m_buffer + 5);
          }

          v48 = *(v41 + 5);
          if (v46 != v48)
          {
            v49 = 5 * v46;
            v50 = *(m_buffer + 1) + 20 * v46;
            v51 = *(v41 + 1) + 4 * v49;
            v52 = 20 * v48 - 4 * v49;
            do
            {
              v53 = *v51;
              *(v50 + 16) = *(v51 + 16);
              *v50 = v53;
              v50 += 20;
              v51 += 20;
              v52 -= 20;
            }

            while (v52);
            LODWORD(v46) = *(v41 + 5);
          }

          *(m_buffer + 5) = v46;
          WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(m_buffer + 24, v41 + 24);
          v54 = *(m_buffer + 13);
          v55 = *(v41 + 13);
          if (v54 <= v55)
          {
            if (v55 > *(m_buffer + 12))
            {
              WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay::Area,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(m_buffer + 10, 0);
              WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(m_buffer + 40, *(v41 + 13));
              v54 = *(m_buffer + 13);
            }
          }

          else
          {
            WTF::VectorDestructor<true,WebCore::TextRecognitionBlockData>::destruct((*(m_buffer + 5) + 40 * v55), (*(m_buffer + 5) + 40 * v54));
            *(m_buffer + 13) = v55;
            v54 = v55;
          }

          v56 = *(v41 + 5);
          v57 = *(m_buffer + 5);
          if (v54)
          {
            v58 = v56 + 40 * v54;
            do
            {
              WTF::String::operator=(v57, v56);
              v59 = *(v56 + 24);
              *(v57 + 8) = *(v56 + 8);
              *(v57 + 24) = v59;
              v56 += 40;
              v57 += 40;
            }

            while (v56 != v58);
            v56 = *(v41 + 5);
            v54 = *(m_buffer + 13);
            v57 = *(m_buffer + 5);
          }

          v60 = *(v41 + 13);
          if (v54 != v60)
          {
            v61 = 5 * v54;
            v62 = v56 + 40 * v60;
            v63 = v57 + 8 * v61;
            v64 = v56 + 8 * v61;
            do
            {
              v65 = *v64;
              if (*v64)
              {
                atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
              }

              *v63 = v65;
              v66 = *(v64 + 8);
              *(v63 + 24) = *(v64 + 24);
              *(v63 + 8) = v66;
              v63 += 40;
              v64 += 40;
            }

            while (v64 != v62);
            LODWORD(v54) = *(v41 + 13);
          }

          *(m_buffer + 13) = v54;
        }

        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(m_buffer + 14, v41 + 14);
        v41 = (v41 + 72);
        m_buffer = (m_buffer + 72);
      }

      while (v41 != v42);
      v41 = *(update + 8);
      m_size = p_highlight->var0.__val_.gridHighlightOverlays.m_size;
      selfCopy = v96;
    }

    v68 = *(update + 19);
    if (m_size != v68)
    {
      v69 = (p_highlight->var0.__val_.gridHighlightOverlays.m_buffer + 72 * m_size);
      v70 = (v41 + 72 * m_size);
      v71 = 72 * v68 - 72 * m_size;
      do
      {
        v69 = (WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(v69, v70) + 72);
        v70 = (v70 + 72);
        v71 -= 72;
      }

      while (v71);
      m_size = *(update + 19);
    }

    p_highlight->var0.__val_.gridHighlightOverlays.m_size = m_size;
    v72 = *(update + 23);
    if (p_highlight->var0.__val_.flexHighlightOverlays.m_size <= v72)
    {
      if (v72 > p_highlight->var0.__val_.flexHighlightOverlays.m_capacity)
      {
        WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&p_highlight->var0.__val_.flexHighlightOverlays, 0);
        WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&p_highlight->var0.__val_.flexHighlightOverlays, *(update + 23));
      }
    }

    else
    {
      WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(&p_highlight->var0.__val_.flexHighlightOverlays, v72);
    }

    v73 = *(update + 10);
    v74 = p_highlight->var0.__val_.flexHighlightOverlays.m_size;
    v75 = p_highlight->var0.__val_.flexHighlightOverlays.m_buffer;
    if (v74)
    {
      v76 = selfCopy;
      v77 = 0;
      v78 = 136 * v74;
      do
      {
        v79 = *(v75 + v77);
        if (v79 != *(v73 + v77))
        {
          if ((v79 & 0x8000000000000) != 0)
          {
            v83 = (v79 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v79 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v83);
              WTF::fastFree(v83, v72);
            }
          }

          v80 = *(v73 + v77);
          *(v75 + v77) = v80;
          if ((v80 & 0x8000000000000) != 0)
          {
            atomic_fetch_add((v80 & 0xFFFFFFFFFFFFLL), 1u);
          }
        }

        v81 = v75 + v77;
        v82 = *(v73 + v77 + 8);
        *(v81 + 24) = *(v73 + v77 + 24);
        *(v81 + 8) = v82;
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v75 + v77 + 40, v73 + v77 + 40);
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v75 + v77 + 56, v73 + v77 + 56);
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v75 + v77 + 72, v73 + v77 + 72);
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v75 + v77 + 88, v73 + v77 + 88);
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v75 + v77 + 104, v73 + v77 + 104);
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v75 + v77 + 120), (v73 + v77 + 120));
        v77 += 136;
      }

      while (v78 != v77);
      v73 = *(update + 10);
      LODWORD(v74) = p_highlight->var0.__val_.flexHighlightOverlays.m_size;
      v75 = p_highlight->var0.__val_.flexHighlightOverlays.m_buffer;
      selfCopy = v76;
    }

    v84 = *(update + 23);
    if (v74 != v84)
    {
      v85 = (v75 + 136 * v74);
      v86 = (v73 + 136 * v74);
      v87 = 136 * v84 - 136 * v74;
      do
      {
        v85 = (WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(v85, v86) + 136);
        v86 = (v86 + 136);
        v87 -= 136;
      }

      while (v87);
      LODWORD(v74) = *(update + 23);
    }

    p_highlight->var0.__val_.flexHighlightOverlays.m_size = v74;
  }

  p_highlight->var0.__val_.usePageCoordinates = *(update + 96);
LABEL_109:
  [objc_msgSend(MEMORY[0x1E69DCEB0] mainScreen];
  [(WKInspectorHighlightView *)selfCopy setContentScaleFactor:v88 * scale];
  WebCore::FloatRect::operator CGRect();
  [(WKInspectorHighlightView *)selfCopy setFrame:?];
  v89 = *(update + 40);
  if ((v89 - 1) >= 2)
  {
    if (v89 == 3)
    {
      [(WKInspectorHighlightView *)selfCopy _layoutForRectsHighlight:update];
    }
  }

  else
  {
    [(WKInspectorHighlightView *)selfCopy _layoutForNodeListHighlight:update];
  }

  [(WKInspectorHighlightView *)selfCopy setNeedsDisplay];
}

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 416) = 0;
  *(self + 520) = 0;
  return self;
}

@end