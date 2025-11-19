@interface CNAvatarCardTransition
- (void)animateTransition:(id)a3;
@end

@implementation CNAvatarCardTransition

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v7 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
  v172 = v7;
  v173 = v6;
  if ([(CNAvatarCardTransition *)self reversed])
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [v9 presentationController];
  v170 = [v10 sourceViewController];
  v11 = [v170 _cardViewControllerTransitioning];
  if ([(CNAvatarCardTransition *)self reversed])
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;
  v171 = v9;
  v169 = v11;
  if ([(CNAvatarCardTransition *)self reversed])
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;
  v16 = [v10 presentedView];
  v17 = [v10 vibrancyView];
  [v10 frameOfPresentedViewInContainerView];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if (![(CNAvatarCardTransition *)self reversed])
  {
    [v5 addSubview:v16];
    v26 = [v10 dimmingView];
    [v26 setAlpha:0.0];

    [v16 setFrame:{v19, v21, v23, v25}];
    [v5 layoutIfNeeded];
  }

  v27 = *MEMORY[0x1E695F058];
  v28 = *(MEMORY[0x1E695F058] + 8);
  v29 = *(MEMORY[0x1E695F058] + 16);
  v30 = *(MEMORY[0x1E695F058] + 24);
  if (v13)
  {
    v31 = v15 == 0;
  }

  else
  {
    v31 = 1;
  }

  v165 = v16;
  if (v31)
  {
    if ([(CNAvatarCardTransition *)self reversed])
    {
      v48 = 0;
      v66 = 0;
      v164 = 0;
      v161 = v29;
      v162 = v30;
      v159 = v27;
      v160 = v28;
      v68 = v30;
      v156 = v28;
      v158 = v29;
      v155 = v27;
    }

    else
    {
      v69 = [v10 sourceView];
      [v10 sourceRect];
      v70 = [v69 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];

      [v10 sourceRect];
      v72 = v71;
      v73 = v29;
      v75 = v74;
      v76 = v30;
      v78 = v77;
      v80 = v79;
      v81 = [v10 sourceView];
      v82 = v75;
      v29 = v73;
      v83 = v78;
      v30 = v76;
      [v17 convertRect:v81 fromView:{v72, v82, v83, v80}];
      [v70 setFrame:?];

      v84 = [v15 transitioningView];
      [v15 transitioningFrame];
      [v84 convertRect:v17 toView:?];
      v155 = v85;
      v156 = v86;
      v158 = v87;
      v68 = v88;

      v164 = v70;
      [v17 addSubview:v70];
      v48 = 0;
      v66 = 0;
      v161 = v73;
      v162 = v76;
      v159 = v27;
      v160 = v28;
    }
  }

  else
  {
    v32 = [v13 transitioningImage];
    [v13 transitioningImageFrame];
    v34 = v33;
    v174 = v29;
    v36 = v35;
    v167 = v30;
    v38 = v37;
    v40 = v39;
    v41 = [v13 transitioningView];
    [v5 convertRect:v41 fromView:{v34, v36, v38, v40}];
    v163 = v42;
    v157 = v43;
    v45 = v44;
    v47 = v46;

    v48 = [v15 transitioningImage];
    [v15 transitioningImageFrame];
    v50 = v49;
    v52 = v51;
    v53 = v28;
    v55 = v54;
    v56 = v27;
    v58 = v57;
    v59 = [v15 transitioningView];
    v60 = v55;
    v28 = v53;
    v29 = v174;
    v61 = v58;
    v27 = v56;
    [v5 convertRect:v59 fromView:{v50, v52, v60, v61}];
    v159 = v62;
    v160 = v63;
    v161 = v64;
    v162 = v65;

    v66 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v32];
    [v5 addSubview:v66];
    v67 = v45;
    v30 = v167;
    [v66 setFrame:{v163, v157, v67, v47}];
    [v13 setTransitioningImageVisible:0];
    [v15 setTransitioningImageVisible:0];
    [v10 setOriginalTransitioning:v13];

    v164 = 0;
    v68 = v167;
    v156 = v28;
    v158 = v174;
    v155 = v56;
  }

  v168 = v13;
  v175 = v5;
  v153 = v15;
  v154 = v17;
  if ([(CNAvatarCardTransition *)self reversed])
  {
    v89 = 0;
    v90 = 0;
    v151 = v29;
    v152 = v30;
    v149 = v27;
    v150 = v28;
  }

  else
  {
    v91 = [v15 transitioningView];
    [v15 transitioningContentFrame];
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v147 = v68;
    v99 = v98;
    v90 = [v91 resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
    [v10 sourceRect];
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v108 = [v10 sourceView];
    [v17 convertRect:v108 fromView:{v101, v103, v105, v107}];
    [v90 setFrame:?];

    [v90 setAlpha:0.0];
    [v17 convertRect:v91 fromView:{v93, v95, v97, v99}];
    v149 = v109;
    v150 = v110;
    v151 = v111;
    v152 = v112;
    [v17 addSubview:v90];
    [v15 transitioningFrame];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v89 = [v91 resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
    [v10 sourceRect];
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v128 = v127;
    v129 = [v10 sourceView];
    [v17 convertRect:v129 fromView:{v122, v124, v126, v128}];
    [v89 setFrame:?];

    [v89 setAlpha:0.0];
    v130 = v114;
    v68 = v147;
    [v17 convertRect:v91 fromView:{v130, v116, v118, v120}];
    v27 = v131;
    v28 = v132;
    v29 = v133;
    v30 = v134;
    [v17 addSubview:v89];
  }

  v148 = MEMORY[0x1E69DD250];
  [(CNAvatarCardTransition *)self transitionDuration:v4];
  v136 = v135;
  if ([(CNAvatarCardTransition *)self reversed])
  {
    v137 = 1.0;
  }

  else
  {
    v137 = 0.8;
  }

  v186[0] = MEMORY[0x1E69E9820];
  v186[1] = 3221225472;
  v186[2] = __44__CNAvatarCardTransition_animateTransition___block_invoke;
  v186[3] = &unk_1E74E76A8;
  v195 = v159;
  v196 = v160;
  v197 = v161;
  v198 = v162;
  v187 = v66;
  v188 = v48;
  v189 = v164;
  v199 = v155;
  v200 = v156;
  v201 = v158;
  v202 = v68;
  v190 = v90;
  v203 = v149;
  v204 = v150;
  v205 = v151;
  v206 = v152;
  v138 = v48;
  v207 = v27;
  v208 = v28;
  v209 = v29;
  v210 = v30;
  v191 = v89;
  v192 = self;
  v193 = v10;
  v194 = v165;
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 3221225472;
  v176[2] = __44__CNAvatarCardTransition_animateTransition___block_invoke_2;
  v176[3] = &unk_1E74E76F8;
  v177 = v187;
  v178 = v153;
  v179 = self;
  v180 = v193;
  v181 = v189;
  v182 = v190;
  v183 = v191;
  v184 = v194;
  v185 = v4;
  v139 = v4;
  v140 = v194;
  v141 = v191;
  v166 = v190;
  v142 = v189;
  v143 = v193;
  v144 = v153;
  v145 = v187;
  v146 = v138;
  [v148 animateWithDuration:0 delay:v186 usingSpringWithDamping:v176 initialSpringVelocity:v136 options:0.0 animations:v137 completion:0.0];
}

void __44__CNAvatarCardTransition_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setFrame:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
    [*(a1 + 32) setImage:*(a1 + 40)];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    [v3 setFrame:{*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152)}];
    [*(a1 + 48) setAlpha:0.0];
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    [v4 setAlpha:1.0];
    [*(a1 + 56) setFrame:{*(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184)}];
    [*(a1 + 64) setAlpha:1.0];
    [*(a1 + 64) setFrame:{*(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216)}];
  }

  if ([*(a1 + 72) reversed])
  {
    v5 = *(a1 + 88);

    [v5 setAlpha:0.0];
  }

  else
  {
    v6 = [*(a1 + 80) dimmingView];
    [v6 setAlpha:1.0];
  }
}

void __44__CNAvatarCardTransition_animateTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69DD250];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__CNAvatarCardTransition_animateTransition___block_invoke_3;
  v16[3] = &unk_1E74E76D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15 = *(a1 + 48);
  v7 = *(&v15 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v17 = v8;
  v18 = v15;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v19 = v14;
  v20 = v13;
  [v4 performWithoutAnimation:v16];
  [*(a1 + 96) completeTransition:a2];
}

uint64_t __44__CNAvatarCardTransition_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 removeFromSuperview];
    [*(a1 + 40) setTransitioningImageVisible:1];
  }

  if (([*(a1 + 48) reversed] & 1) == 0)
  {
    v3 = [*(a1 + 56) cardView];
    [v3 setAlpha:1.0];
  }

  [*(a1 + 64) removeFromSuperview];
  [*(a1 + 72) removeFromSuperview];
  [*(a1 + 80) removeFromSuperview];
  v4 = *(a1 + 88);

  return [v4 setAlpha:1.0];
}

@end