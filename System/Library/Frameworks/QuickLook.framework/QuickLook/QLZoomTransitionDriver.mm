@interface QLZoomTransitionDriver
+ (void)cropView:(id)a3 toAvoidNavigationOffset:(double)a4 presenting:(BOOL)a5 animationDuration:(double)a6;
- (void)_performZoomTransition;
- (void)tearDown;
@end

@implementation QLZoomTransitionDriver

- (void)_performZoomTransition
{
  v222 = 0u;
  memset(&v223, 0, sizeof(v223));
  v220 = 0u;
  v221 = 0u;
  memset(v219, 0, sizeof(v219));
  if ([(QLTransitionDriver *)self presenting])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v193 = v3;
  if ([(QLTransitionDriver *)self presenting])
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [(QLTransitionDriver *)self transitionContainer];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v188 = v9;
  v189 = v7;
  [(QLTransitionDriver *)self setTransitionContainerOriginalFrame:v7, v9, v11, v13];
  [(QLTransitionDriver *)self sourceViewFrame];
  v15 = v14;
  v17 = v16;
  [(QLTransitionDriver *)self uncroppedFrame];
  v19 = MEMORY[0x277CBF2C0];
  if (v15 == v20 && v17 == v18)
  {
    v21 = [(QLTransitionDriver *)self sourceView];
    uncroppedView = self->_uncroppedView;
    self->_uncroppedView = v21;

    if ([(QLTransitionDriver *)self isSourceViewTransformed])
    {
      [(QLTransitionDriver *)self sourceViewCenter];
      [(UIView *)self->_uncroppedView setCenter:?];
      [(QLTransitionDriver *)self sourceViewBounds];
      [(UIView *)self->_uncroppedView setBounds:?];
      [(QLTransitionDriver *)self sourceViewTransform];
      v23 = self->_uncroppedView;
      v218 = v216;
      [(UIView *)v23 setTransform:&v218];
    }

    else
    {
      v87 = [(QLTransitionDriver *)self sourceView];
      v88 = self->_uncroppedView;
      self->_uncroppedView = v87;

      [(QLTransitionDriver *)self sourceViewFrame];
      [(UIView *)self->_uncroppedView setFrame:?];
    }

    [(QLTransitionDriver *)self sourceViewFrame];
  }

  else
  {
    v24 = objc_opt_new();
    v25 = self->_uncroppedView;
    self->_uncroppedView = v24;

    if ([(QLTransitionDriver *)self isSourceViewTransformed])
    {
      v26 = [(QLTransitionDriver *)self sourceView];
      v27 = v19[1];
      *&v218.a = *v19;
      *&v218.c = v27;
      *&v218.tx = v19[2];
      [v26 setTransform:&v218];

      [(QLTransitionDriver *)self sourceViewCenter];
      v29 = v28;
      v31 = v30;
      v32 = [(QLTransitionDriver *)self sourceView];
      [v32 setCenter:{v29, v31}];

      [(QLTransitionDriver *)self sourceViewBounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = [(QLTransitionDriver *)self sourceView];
      [v41 setBounds:{v34, v36, v38, v40}];

      v42 = [(QLTransitionDriver *)self sourceView];
      [v42 frame];
      v44 = v43;
      [(QLTransitionDriver *)self uncroppedFrame];
      v46 = v44 + v45;
      v47 = [(QLTransitionDriver *)self sourceView];
      [v47 frame];
      v49 = v48;
      [(QLTransitionDriver *)self uncroppedFrame];
      v51 = v49 + v50;
      [(QLTransitionDriver *)self uncroppedFrame];
      [(UIView *)self->_uncroppedView setFrame:v46, v51];

      [(QLTransitionDriver *)self uncroppedFrame];
      v53 = -v52;
      [(QLTransitionDriver *)self uncroppedFrame];
      v55 = -v54;
      [(QLTransitionDriver *)self sourceViewBounds];
      v57 = v56;
      v59 = v58;
      v60 = [(QLTransitionDriver *)self sourceView];
      [v60 setFrame:{v53, v55, v57, v59}];

      v61 = self->_uncroppedView;
      v62 = [(QLTransitionDriver *)self sourceView];
      [(UIView *)v61 addSubview:v62];

      [(QLTransitionDriver *)self sourceViewCenter];
      [(UIView *)self->_uncroppedView setCenter:?];
      [(QLTransitionDriver *)self sourceViewTransform];
      v63 = self->_uncroppedView;
      v218 = v217;
      [(UIView *)v63 setTransform:&v218];
    }

    else
    {
      v64 = self->_uncroppedView;
      v65 = [(QLTransitionDriver *)self sourceView];
      [(UIView *)v64 addSubview:v65];

      [(QLTransitionDriver *)self sourceViewFrame];
      v67 = v66;
      [(QLTransitionDriver *)self uncroppedFrame];
      v69 = v67 + v68;
      [(QLTransitionDriver *)self sourceViewFrame];
      v71 = v70;
      [(QLTransitionDriver *)self uncroppedFrame];
      v73 = v71 + v72;
      [(QLTransitionDriver *)self uncroppedFrame];
      [(UIView *)self->_uncroppedView setFrame:v69, v73];
      [(QLTransitionDriver *)self uncroppedFrame];
      v75 = -v74;
      [(QLTransitionDriver *)self uncroppedFrame];
      v77 = -v76;
      [(QLTransitionDriver *)self sourceViewFrame];
      v79 = v78;
      v81 = v80;
      v82 = [(QLTransitionDriver *)self sourceView];
      [v82 setFrame:{v75, v77, v79, v81}];
    }

    [(UIView *)self->_uncroppedView frame];
  }

  v190 = v84;
  v191 = v83;
  v195 = v86;
  v196 = v85;
  v89 = [(QLTransitionDriver *)self transitionContainer];
  [v89 addSubview:self->_uncroppedView];

  v90 = [(QLTransitionDriver *)self transitionPreviewItem];
  if (v90)
  {
    v91 = [(QLTransitionDriver *)self transitionPreviewItem];
    [v91 previewSizeForItemViewControllerSize:{v11, v13}];
    v93 = v92;
    v95 = v94;
  }

  else
  {
    [(QLTransitionDriver *)self transitionPreviewSize];
    v93 = v96;
    v95 = v97;
  }

  v98 = v93 == *MEMORY[0x277CBF3A8];
  v99 = v95 == *(MEMORY[0x277CBF3A8] + 8);
  v192 = v13;
  if (v98 && v99)
  {
    v100 = v13;
  }

  else
  {
    v100 = v95;
  }

  if (v98 && v99)
  {
    v101 = v11;
  }

  else
  {
    v101 = v93;
  }

  v102 = [(QLTransitionDriver *)self transitionPreviewItem];
  v103 = [v102 useFullPDFTransition];

  v194 = v4;
  if (v103)
  {
    v104 = (v101 + -24.0) / v196;
  }

  else
  {
    v105 = [(QLTransitionDriver *)self transitionContainer];
    [v105 frame];
    v107 = v106;
    v108 = [(QLTransitionDriver *)self transitionContainer];
    [v108 frame];
    v110 = v107 / v109;

    if (v196 / v195 > v110)
    {
      v104 = v101 / v196;
    }

    else
    {
      v104 = v100 / v195;
    }
  }

  v111 = [(QLTransitionDriver *)self gestureTracker];
  v112 = v111;
  v182 = v11;
  if (v111)
  {
    [v111 trackedBounds];
    v185 = v113;
    v115 = v114;
    v117 = v116;
    v119 = v118;
    [v112 anchorPoint];
    v121 = v120;
    v123 = v122;
    [v112 trackedCenter];
    v125 = v124;
    v127 = v126;
    memset(&v218, 0, sizeof(v218));
    [v112 trackedTransform];
    v128 = [(QLTransitionDriver *)self sourceView];
    v129 = [v128 layer];
    [v129 anchorPoint];
    v131 = v130;
    v215 = v218;
    v132.f64[1] = v218.ty;
    v132.f64[0] = v125;
    v136 = QLConvertPointFromAnchorPointToNewAnchorPoint(&v215, v132, v127, v121, v123, v131, v133, v134, v135, v185, v115, v117, v119);
    MidY = v137;
  }

  else
  {
    v224.origin.x = v189;
    v224.origin.y = v188;
    v224.size.width = v11;
    v224.size.height = v192;
    MidX = CGRectGetMidX(v224);
    v225.size.width = v11;
    v136 = MidX;
    v225.origin.x = v189;
    v225.origin.y = v188;
    v225.size.height = v192;
    MidY = CGRectGetMidY(v225);
  }

  memset(&v218, 0, sizeof(v218));
  v184 = v19[1];
  v186 = *v19;
  *&v215.a = *v19;
  *&v215.c = v184;
  v183 = v19[2];
  *&v215.tx = v183;
  CGAffineTransformScale(&v218, &v215, v104, v104);
  if (v112)
  {
    [v112 trackedTransform];
    t1 = v218;
    CGAffineTransformConcat(&v215, &t1, &t2);
    v218 = v215;
  }

  memset(&v215, 0, sizeof(v215));
  if ([(QLTransitionDriver *)self isSourceViewTransformed])
  {
    [(QLTransitionDriver *)self sourceViewTransform];
  }

  else
  {
    *&t2.a = v186;
    *&t2.c = v184;
    *&t2.tx = v183;
  }

  CGAffineTransformScale(&v215, &t2, 1.0 / v104, 1.0 / v104);
  memset(&t2, 0, sizeof(t2));
  v140 = [(QLTransitionDriver *)self gestureTracker];
  if (v140)
  {
    v141 = [(QLTransitionDriver *)self gestureTracker];
    v142 = v141;
    if (v141)
    {
      [v141 trackedTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }
  }

  else
  {
    *&t2.a = v186;
    *&t2.c = v184;
    *&t2.tx = v183;
  }

  v143 = [(QLTransitionDriver *)self transitionPreviewItem];
  v144 = [v143 useFullPDFTransition];

  v145 = 0.0;
  v146 = 0.0;
  if (v144)
  {
    [(QLTransitionDriver *)self hostNavigationOffset];
    v148 = v147 + 16.0;
    v145 = v148 - (v192 - v195 * v104) * 0.5;
    v146 = (v192 / v104 - v195) * 0.5 - v148 / v104;
  }

  if ([(QLTransitionDriver *)self presenting])
  {
    if ([(QLTransitionDriver *)self isSourceViewTransformed])
    {
      [(QLTransitionDriver *)self sourceViewCenter];
      v150 = v149;
      v152 = v151;
    }

    else
    {
      v226.origin.x = v191;
      v226.origin.y = v190;
      v226.size.width = v196;
      v226.size.height = v195;
      v150 = CGRectGetMidX(v226);
      v227.origin.x = v191;
      v227.origin.y = v190;
      v227.size.width = v196;
      v227.size.height = v195;
      v152 = CGRectGetMidY(v227);
    }

    v228.origin.x = v189;
    v228.origin.y = v188;
    v228.size.width = v182;
    v228.size.height = v192;
    v181 = CGRectGetMidX(v228);
    v229.origin.x = v189;
    v229.origin.y = v188;
    v229.size.width = v182;
    v229.size.height = v192;
    v155 = CGRectGetMidY(v229);
    if ([(QLTransitionDriver *)self isSourceViewTransformed])
    {
      [(QLTransitionDriver *)self sourceViewTransform];
    }

    else
    {
      *&v219[1].a = v186;
      *&v219[1].c = v184;
      *&v219[1].tx = v183;
    }

    v180 = v145 + v155;
    v219[0] = v218;
    v232.origin.x = v191;
    v232.origin.y = v190;
    v232.size.width = v196;
    v232.size.height = v195;
    v136 = CGRectGetMidX(v232);
    v233.origin.x = v191;
    v233.origin.y = v190;
    v233.size.width = v196;
    v233.size.height = v195;
    MidY = v146 + CGRectGetMidY(v233);
    v234.origin.x = v189;
    v234.origin.y = v188;
    v234.size.width = v182;
    v234.size.height = v192;
    v187 = CGRectGetMidX(v234);
    v235.origin.x = v189;
    v235.origin.y = v188;
    v235.size.width = v182;
    v235.size.height = v192;
    v156 = CGRectGetMidY(v235);
    p_t2 = &t2;
    v158 = &v215;
  }

  else
  {
    if ([(QLTransitionDriver *)self isSourceViewTransformed])
    {
      [(QLTransitionDriver *)self sourceViewCenter];
      v180 = v154;
      v181 = v153;
    }

    else
    {
      v230.origin.x = v191;
      v230.origin.y = v190;
      v230.size.width = v196;
      v230.size.height = v195;
      v181 = CGRectGetMidX(v230);
      v231.origin.x = v191;
      v231.origin.y = v190;
      v231.size.width = v196;
      v231.size.height = v195;
      v180 = CGRectGetMidY(v231);
    }

    v219[1] = v218;
    if ([(QLTransitionDriver *)self isSourceViewTransformed])
    {
      [(QLTransitionDriver *)self sourceViewTransform];
    }

    else
    {
      *&v219[0].a = v186;
      *&v219[0].c = v184;
      *&v219[0].tx = v183;
    }

    v152 = MidY + v145;
    v236.origin.x = v191;
    v236.origin.y = v190;
    v236.size.width = v196;
    v236.size.height = v195;
    v187 = CGRectGetMidX(v236);
    v237.origin.x = v191;
    v237.origin.y = v190;
    v237.size.width = v196;
    v237.size.height = v195;
    v156 = v146 + CGRectGetMidY(v237);
    p_t2 = &v215;
    v158 = &t2;
    v150 = v136;
  }

  v159 = *&v158->c;
  *&v223.a = *&v158->a;
  *&v223.c = v159;
  *&v223.tx = *&v158->tx;
  v160 = *&p_t2->c;
  v220 = *&p_t2->a;
  v221 = v160;
  v222 = *&p_t2->tx;
  t1 = v219[1];
  [(UIView *)self->_uncroppedView setTransform:&t1];
  [(UIView *)self->_uncroppedView setAlpha:v193];
  [(UIView *)self->_uncroppedView setCenter:v150, v152];
  v161 = [(QLTransitionDriver *)self destinationView];
  t1 = v223;
  [v161 setTransform:&t1];

  v162 = [(QLTransitionDriver *)self destinationView];
  [v162 setAlpha:v194];

  v163 = [(QLTransitionDriver *)self destinationView];
  [v163 setCenter:{v136, MidY}];

  [(QLTransitionDriver *)self duration];
  v165 = v164;
  v166 = MEMORY[0x277D75D18];
  v167 = [(QLTransitionDriver *)self presenting];
  v212[0] = MEMORY[0x277D85DD0];
  v212[1] = 3221225472;
  v212[2] = __48__QLZoomTransitionDriver__performZoomTransition__block_invoke;
  v212[3] = &unk_278B57318;
  if (v167)
  {
    v168 = 0x10000;
  }

  else
  {
    v168 = 0x20000;
  }

  v212[4] = self;
  *&v212[5] = 1.0 - v193;
  [v166 animateWithDuration:v168 delay:v212 options:0 animations:v165 * 0.5 completion:0.0];
  v169 = MEMORY[0x277D75D18];
  v170 = [(QLTransitionDriver *)self presenting];
  v211[0] = MEMORY[0x277D85DD0];
  v211[1] = 3221225472;
  v211[2] = __48__QLZoomTransitionDriver__performZoomTransition__block_invoke_2;
  v211[3] = &unk_278B57318;
  if (v170)
  {
    v171 = 0x20000;
  }

  else
  {
    v171 = 0x10000;
  }

  v211[4] = self;
  *&v211[5] = 1.0 - v194;
  [v169 animateWithDuration:v171 delay:v211 options:0 animations:v165 * 0.5 completion:0.0];
  v172 = [(QLTransitionDriver *)self transitionContainer];
  v173 = [v172 layer];
  -[QLTransitionDriver setTransitionContainerMasksToBounds:](self, "setTransitionContainerMasksToBounds:", [v173 masksToBounds]);

  v174 = [(QLTransitionDriver *)self transitionContainer];
  v175 = [v174 layer];
  [v175 setMasksToBounds:1];

  if ([(QLTransitionDriver *)self presenting])
  {
    v204[0] = MEMORY[0x277D85DD0];
    v204[1] = 3221225472;
    v204[2] = __48__QLZoomTransitionDriver__performZoomTransition__block_invoke_3;
    v204[3] = &unk_278B585E8;
    v204[4] = self;
    *&v204[5] = v187;
    *&v204[6] = v156;
    v205 = v220;
    v206 = v221;
    v207 = v222;
    v208 = v181;
    v209 = v180;
    v210 = v219[0];
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:0 delay:v204 options:0 mass:v165 stiffness:0.0 damping:1.0 initialVelocity:350.0 animations:25.0691051 completion:0.0];
  }

  else
  {
    v176 = [(QLTransitionDriver *)self gestureTracker];
    if (v176)
    {
      v177 = [(QLTransitionDriver *)self gestureTracker];
      [v177 finalAnimationSpringDamping];
      v179 = v178;
    }

    else
    {
      v179 = 1.0;
    }

    v197[0] = MEMORY[0x277D85DD0];
    v197[1] = 3221225472;
    v197[2] = __48__QLZoomTransitionDriver__performZoomTransition__block_invoke_5;
    v197[3] = &unk_278B585E8;
    v197[4] = self;
    *&v197[5] = v187;
    *&v197[6] = v156;
    v198 = v220;
    v199 = v221;
    v200 = v222;
    v201 = v181;
    v202 = v180;
    v203 = v219[0];
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v197 usingSpringWithDamping:0 initialSpringVelocity:v165 options:0.0 animations:v179 completion:0.0];
  }
}

void __48__QLZoomTransitionDriver__performZoomTransition__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) destinationView];
  [v2 setAlpha:v1];
}

uint64_t __48__QLZoomTransitionDriver__performZoomTransition__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) destinationView];
  [v4 setCenter:{v2, v3}];

  v5 = [*(a1 + 32) destinationView];
  [v5 setTransform:v9];

  [*(*(a1 + 32) + 288) setCenter:{*(a1 + 104), *(a1 + 112)}];
  v6 = *(*(a1 + 32) + 288);
  v7 = *(a1 + 136);
  v9[0] = *(a1 + 120);
  v9[1] = v7;
  v9[2] = *(a1 + 152);
  return [v6 setTransform:v9];
}

uint64_t __48__QLZoomTransitionDriver__performZoomTransition__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) destinationView];
  [v4 setCenter:{v2, v3}];

  v5 = [*(a1 + 32) destinationView];
  [v5 setTransform:v9];

  [*(*(a1 + 32) + 288) setCenter:{*(a1 + 104), *(a1 + 112)}];
  v6 = *(*(a1 + 32) + 288);
  v7 = *(a1 + 136);
  v9[0] = *(a1 + 120);
  v9[1] = v7;
  v9[2] = *(a1 + 152);
  return [v6 setTransform:v9];
}

- (void)tearDown
{
  [(UIView *)self->_uncroppedView removeFromSuperview];
  v3 = [(QLTransitionDriver *)self transitionContainerMasksToBounds];
  v4 = [(QLTransitionDriver *)self transitionContainer];
  v5 = [v4 layer];
  [v5 setMasksToBounds:v3];

  [(QLTransitionDriver *)self transitionContainerOriginalFrame];
  v7 = v6;
  [(QLTransitionDriver *)self transitionContainerOriginalFrame];
  v9 = v8;
  v10 = [(QLTransitionDriver *)self transitionContainer];
  [v10 setBounds:{0.0, 0.0, v7, v9}];

  [(QLTransitionDriver *)self transitionContainerOriginalFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(QLTransitionDriver *)self transitionContainer];
  [v19 setFrame:{v12, v14, v16, v18}];
}

+ (void)cropView:(id)a3 toAvoidNavigationOffset:(double)a4 presenting:(BOOL)a5 animationDuration:(double)a6
{
  v6 = a5;
  v8 = a3;
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 bounds];
  v18 = v17;
  [v8 bounds];
  v20 = v19 + a4;
  [v8 bounds];
  v22 = v21;
  [v8 bounds];
  v24 = v23;
  if (v6)
  {
    [v8 setBounds:{v18, v20, v22, v23}];
    [v8 setFrame:{v18, v20, v22, v24}];
  }

  v25 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__QLZoomTransitionDriver_cropView_toAvoidNavigationOffset_presenting_animationDuration___block_invoke;
  v28[3] = &unk_278B58610;
  v38 = v6;
  v29 = v8;
  v30 = v18;
  v31 = v20;
  v32 = v22;
  v33 = v24;
  v34 = v10;
  v35 = v12;
  v36 = v14;
  v37 = v16;
  v26 = v8;
  [v25 animateWithDuration:v28 animations:a6];
}

uint64_t __88__QLZoomTransitionDriver_cropView_toAvoidNavigationOffset_presenting_animationDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = 72;
  }

  else
  {
    v4 = 40;
  }

  if (v2)
  {
    v5 = 80;
  }

  else
  {
    v5 = 48;
  }

  if (v2)
  {
    v6 = 88;
  }

  else
  {
    v6 = 56;
  }

  if (v2)
  {
    v7 = 96;
  }

  else
  {
    v7 = 64;
  }

  [v3 setBounds:{*(a1 + v4), *(a1 + v5), *(a1 + v6), *(a1 + v7)}];
  v8 = *(a1 + v4);
  v9 = *(a1 + v5);
  v10 = *(a1 + v6);
  v11 = *(a1 + v7);
  v12 = *(a1 + 32);

  return [v12 setFrame:{v8, v9, v10, v11}];
}

@end