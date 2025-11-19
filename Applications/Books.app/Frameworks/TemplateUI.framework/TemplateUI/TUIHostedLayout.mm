@interface TUIHostedLayout
- (BOOL)collectHostingPropertiesWithCollector:(id)a3;
- (CGSize)hostingRequestedSize;
- (CGSize)requestedSize;
- (TUIHostedLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (id)axModelTreeWithCustomActionsCollector:(id)a3 scrollAncestorLayout:(id)a4 scrollAncestorTranslation:(CGPoint)a5 liveTransformAncestorLayout:(id)a6;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)computeLayout;
- (void)onInvalidate;
@end

@implementation TUIHostedLayout

- (TUIHostedLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = TUIHostedLayout;
  v9 = [(TUILayout *)&v14 initWithModel:a3 parent:a4 controller:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(TUILayout *)v9 box];
    v12 = [v11 hostingIdentifier];
    [v8 registerHostingLayout:v10 forIdentifier:v12];
  }

  return v10;
}

- (CGSize)hostingRequestedSize
{
  width = self->_requestedSize.width;
  height = self->_requestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  [(TUILayout *)self computeHeight];
  v6 = v5;
  self->_requestedSize.width = v4;
  self->_requestedSize.height = v5;
  v7 = [(TUILayout *)self controller];
  v8 = [(TUILayout *)self box];
  v9 = [v8 hostingIdentifier];
  v10 = [v7 hostingGeometryForIdentifier:v9 requestedSize:{self->_requestedSize.width, self->_requestedSize.height}];

  hostingGeometry = self->_hostingGeometry;
  self->_hostingGeometry = 0;

  if (v10)
  {
    [v10 requestedSize];
    if (self->_requestedSize.width == v13 && self->_requestedSize.height == v12)
    {
      [v10 layoutSize];
      v4 = v15;
      v6 = v16;
      objc_storeStrong(&self->_hostingGeometry, v10);
    }
  }

  v17 = TUIHostingLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(TUILayout *)self controller];
    v19 = [v18 feedId];
    v20 = [(TUILayout *)self box];
    v21 = [v20 hostingIdentifier];
    v34.width = v4;
    v34.height = v6;
    v22 = NSStringFromCGSize(v34);
    v23 = self->_hostingGeometry;
    v24 = 134219010;
    v25 = v19;
    v26 = 2112;
    v27 = v21;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v22;
    v32 = 2112;
    v33 = v23;
    _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "[fid:%lu] computeLayout identifier=%@ geomtry=%@ layoutSize=%@ hostingGeomeetry=%@", &v24, 0x34u);
  }

  [(TUILayout *)self setComputedNaturalSize:v4, v6];
}

- (void)onInvalidate
{
  v4.receiver = self;
  v4.super_class = TUIHostedLayout;
  [(TUILayout *)&v4 onInvalidate];
  hostingGeometry = self->_hostingGeometry;
  self->_hostingGeometry = 0;
}

- (BOOL)collectHostingPropertiesWithCollector:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self box];
  v6 = [v5 hostingIdentifier];

  if (v6)
  {
    v7 = [v5 hostingProperties];
    v8 = [v5 hostingIdentifier];
    [v4 hostingCollectorAddProperties:v7 forIdentifier:v8];
  }

  return 0;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(TUILayout *)self box];
  v8 = [v7 hostingIdentifier];

  v9 = 0;
  if (a3 >= 4 && v8)
  {
    v10 = [v7 anchorRefId];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v7 anchorRefId];
      v13 = sub_5308C(self, 0, 1, v12);

      if (v13)
      {
        v14 = self;
        v67 = v13;
        v15 = v13;
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
        v104 = 0u;
        memset(buf, 0, sizeof(buf));
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        memset(&v75, 0, sizeof(v75));
        v66 = v14;
        v16 = 0;
        if (v14)
        {
          do
          {
            v17 = v14;
            v18 = v16++;
            *&buf[8 * v18] = v14;
            v14 = [(TUILayout *)v14 layoutAncestor];

            v19 = v14 != 0;
          }

          while (v18 <= 0x3E && v14);
        }

        else
        {
          v19 = 0;
        }

        v21 = 0;
        p_ty = &v74.ty;
        v65 = v15;
        do
        {
          v23 = v15;
          *(p_ty++ + 1) = v15;
          v15 = [v15 layoutAncestor];

          if (v21 > 0x3E)
          {
            break;
          }

          ++v21;
        }

        while (v15);
        v24 = 0;
        if (v15)
        {
          v25 = 1;
        }

        else
        {
          v25 = v19;
        }

        if (v25)
        {
          v13 = v67;
        }

        else
        {
          v13 = v67;
          if (v16)
          {
            v26 = &buf[8 * v16 + 8];
            v27 = v16;
            do
            {
              --v27;
              v28 = *(v26 - 2);
              v29 = *p_ty--;
              --v26;
            }

            while (v28 == v29);
            if (v27 >= v16)
            {
              v30 = 0;
            }

            else
            {
              v30 = *v26;
            }

            v24 = v30;
          }
        }

        if (v24)
        {
          memset(buf, 0, 48);
          [v65 computedTransformInAncestorLayout:v24];
          memset(&v75, 0, sizeof(v75));
          [(TUILayout *)v66 computedTransformInAncestorLayout:v24];
          CGAffineTransformInvert(&v75, &v74);
          t1 = *buf;
          memset(&v74, 0, sizeof(v74));
          t2 = v75;
          CGAffineTransformConcat(&v74, &t1, &t2);
          [v65 computedNaturalSize];
          v69 = v31 * 0.5;
          [v65 computedNaturalSize];
          v70 = vaddq_f64(*&v74.tx, vmlaq_n_f64(vmulq_n_f64(*&v74.c, v32 * 0.5), *&v74.a, v69));
          [(TUILayout *)v66 computedNaturalSize];
          v34.f64[1] = v33;
          __asm { FMOV            V1.2D, #1.0 }

          v40 = vmaxnmq_f64(vminnmq_f64(vdivq_f64(v70, vbslq_s8(vcgtq_f64(_Q1, v34), _Q1, v34)), _Q1), 0);
        }

        else
        {
          v40 = vdupq_n_s64(0x7FF8000000000000uLL);
        }

        v68 = v40;
      }

      else
      {
        v68 = vdupq_n_s64(0x7FF8000000000000uLL);
      }

      v20 = v68.i64[1];
    }

    else
    {
      v20 = 0x7FF8000000000000;
      v68.i64[0] = 0x7FF8000000000000;
    }

    v41 = [v7 identifier];
    [(TUILayout *)self renderModelSizeWithContext:v6];
    v43 = v42;
    v45 = v44;
    p_requestedSize = &self->_requestedSize;
    v47 = self->_hostingGeometry != 0;
    [v7 insets];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = [v7 hostingIdentifier];
    v57 = [v7 hostingProperties];
    v9 = [TUIHostingView renderModelIdentifier:v41 size:v47 requestedSize:v56 usingGeometry:v57 insets:v43 hostingIdentifier:v45 hostingProperties:self->_requestedSize.width anchorPoint:self->_requestedSize.height, v49, v51, v53, v55, v68.i64[0], v20];

    v58 = TUIHostingLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v71 = [(TUILayout *)self controller];
      v60 = [v71 feedId];
      v61 = [(TUILayout *)self box];
      v62 = [v61 hostingIdentifier];
      [v9 size];
      v63 = NSStringFromCGSize(v134);
      v64 = NSStringFromCGSize(*p_requestedSize);
      *buf = 134219010;
      *&buf[4] = v60;
      *&buf[12] = 2112;
      *&buf[14] = v62;
      *&buf[22] = 2112;
      *&buf[24] = v63;
      *&buf[32] = 2112;
      *&buf[34] = v64;
      *&buf[42] = 2112;
      *&buf[44] = v9;
      _os_log_debug_impl(&dword_0, v58, OS_LOG_TYPE_DEBUG, "[fid:%lu] newRenderModel identifier=%@ size=%@ requestedSize=%@ renderModel=%@", buf, 0x34u);
    }
  }

  return v9;
}

- (id)axModelTreeWithCustomActionsCollector:(id)a3 scrollAncestorLayout:(id)a4 scrollAncestorTranslation:(CGPoint)a5 liveTransformAncestorLayout:(id)a6
{
  v8.receiver = self;
  v8.super_class = TUIHostedLayout;
  v6 = [(TUILayout *)&v8 axModelTreeWithCustomActionsCollector:a3 scrollAncestorLayout:a4 scrollAncestorTranslation:a6 liveTransformAncestorLayout:a5.x, a5.y];
  [v6 setShouldVendControlView:1];

  return v6;
}

- (CGSize)requestedSize
{
  width = self->_requestedSize.width;
  height = self->_requestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end