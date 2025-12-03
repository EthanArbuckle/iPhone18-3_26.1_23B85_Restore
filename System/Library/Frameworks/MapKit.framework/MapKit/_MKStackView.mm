@interface _MKStackView
- (_MKAnimationStackViewDelegate)stackAnimationDelegate;
- (_MKStackView)initWithFrame:(CGRect)frame;
- (_MKStackViewDelegate)stackDelegate;
- (void)_createConstraints;
- (void)addSubview:(id)subview;
- (void)setStackedSubviews:(id)subviews animated:(BOOL)animated isNeedLayout:(BOOL)layout;
@end

@implementation _MKStackView

- (_MKAnimationStackViewDelegate)stackAnimationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stackAnimationDelegate);

  return WeakRetained;
}

- (_MKStackViewDelegate)stackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stackDelegate);

  return WeakRetained;
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  superview = [subviewCopy superview];

  if (superview != self)
  {
    [subviewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKStackView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if ([subviewCopy _hostsLayoutEngineAllowsTAMIC_NO])
    {
      [subviewCopy _setHostsLayoutEngine:1];
    }

    [subviewCopy bounds];
    Height = CGRectGetHeight(v15);
    v13 = 1.0;
    if (Height > 1.0)
    {
      [subviewCopy bounds];
      v13 = CGRectGetHeight(v16);
    }

    [subviewCopy setFrame:{v7, v9, v11, v13}];
    [(NSHashTable *)self->_viewsNeedingWidthConstraints addObject:subviewCopy];
    v14.receiver = self;
    v14.super_class = _MKStackView;
    [(_MKStackView *)&v14 addSubview:subviewCopy];
    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)_createConstraints
{
  v59 = *MEMORY[0x1E69E9840];
  if ([(NSHashTable *)self->_viewsNeedingWidthConstraints count])
  {
    allObjects = [(NSHashTable *)self->_viewsNeedingWidthConstraints allObjects];
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{2 * objc_msgSend(allObjects, "count")}];
    [(NSHashTable *)self->_viewsNeedingWidthConstraints removeAllObjects];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v5 = allObjects;
    v6 = [v5 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v54;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v54 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v53 + 1) + 8 * i);
          superview = [v10 superview];

          if (superview == self)
          {
            leadingAnchor = [v10 leadingAnchor];
            leadingAnchor2 = [(_MKStackView *)self leadingAnchor];
            v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
            [v4 addObject:v14];

            trailingAnchor = [(_MKStackView *)self trailingAnchor];
            trailingAnchor2 = [v10 trailingAnchor];
            v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
            [v4 addObject:v17];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v7);
    }

    [MEMORY[0x1E696ACD8] activateConstraints:v4];
  }

  v18 = 408;
  if (![(NSArray *)self->_stackConstraints count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_stackDelegate);
    if (WeakRetained)
    {
      v20 = objc_loadWeakRetained(&self->_stackDelegate);
      v21 = objc_opt_respondsToSelector();
    }

    else
    {
      v21 = 0;
    }

    v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_stackedSubviews, "count") + 1}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v22 = self->_stackedSubviews;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v23)
    {
      v24 = v23;
      v46 = 408;
      v25 = 0;
      v26 = *v50;
      obj = v22;
      do
      {
        v27 = 0;
        v28 = v25;
        do
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v49 + 1) + 8 * v27);
          v30 = 0.0;
          if (v21)
          {
            v31 = objc_loadWeakRetained(&self->_stackDelegate);
            [v31 stackView:self distanceBetweenUpperView:v28 andLowerView:v29];
            v30 = v32;
          }

          topAnchor = [v29 topAnchor];
          if (v28)
          {
            [v28 bottomAnchor];
          }

          else
          {
            [(_MKStackView *)self topAnchor];
          }
          v34 = ;
          v35 = [topAnchor constraintEqualToAnchor:v34 constant:v30];
          [v48 addObject:v35];

          v25 = v29;
          ++v27;
          v28 = v25;
        }

        while (v24 != v27);
        v24 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v24);

      if (!v25)
      {
        v42 = 0x1E696A000;
        v18 = v46;
LABEL_38:
        v44 = [v48 copy];
        v45 = *(&self->super.super.super.isa + v18);
        *(&self->super.super.super.isa + v18) = v44;

        [*(v42 + 3288) activateConstraints:*(&self->super.super.super.isa + v18)];
        return;
      }

      v36 = 0.0;
      v18 = v46;
      if (v21)
      {
        v37 = objc_loadWeakRetained(&self->_stackDelegate);
        [v37 stackView:self distanceBetweenUpperView:v25 andLowerView:0];
        v36 = v38;
      }

      bottomConstraintShouldBeGreaterThanOrEqual = self->_bottomConstraintShouldBeGreaterThanOrEqual;
      bottomAnchor = [(_MKStackView *)self bottomAnchor];
      bottomAnchor2 = [v25 bottomAnchor];
      if (bottomConstraintShouldBeGreaterThanOrEqual)
      {
        [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:v36];
      }

      else
      {
        [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v36];
      }
      v22 = ;

      LODWORD(v43) = 1132068864;
      [(NSArray *)v22 setPriority:v43];
      [v48 addObject:v22];
    }

    else
    {
      v25 = 0;
    }

    v42 = 0x1E696A000uLL;
    goto LABEL_38;
  }
}

- (void)setStackedSubviews:(id)subviews animated:(BOOL)animated isNeedLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  v125 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v9 = subviewsCopy;
  if (self->_stackedSubviews != subviewsCopy && ([(NSArray *)subviewsCopy isEqual:?]& 1) == 0)
  {
    if (animatedCopy)
    {
      window = [(_MKStackView *)self window];
      v94 = window != 0;
    }

    else
    {
      v94 = 0;
    }

    if (self->_stackConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      stackConstraints = self->_stackConstraints;
      self->_stackConstraints = 0;
    }

    v12 = self->_stackedSubviews;
    v13 = [(NSArray *)v9 copy];
    stackedSubviews = self->_stackedSubviews;
    self->_stackedSubviews = v13;

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v15 = self->_stackedSubviews;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v116 objects:v124 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v117;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v117 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(_MKStackView *)self addSubview:*(*(&v116 + 1) + 8 * i)];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v116 objects:v124 count:16];
      }

      while (v17);
    }

    v20 = MEMORY[0x1E695E0F0];
    if (v12)
    {
      v21 = v12;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    v22 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v21];
    v23 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    [v22 minusSet:v23];

    if (v94)
    {
      v86 = v22;
      if (layoutCopy)
      {
        stackAnimationDelegate = [(_MKStackView *)self stackAnimationDelegate];
        [stackAnimationDelegate stackViewNeedsLayout:self];
      }

      if (v9)
      {
        v25 = v9;
      }

      else
      {
        v25 = v20;
      }

      v26 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v25];
      v27 = [MEMORY[0x1E695DFD8] setWithArray:v12];
      [v26 minusSet:v27];

      clipsToBounds = [(_MKStackView *)self clipsToBounds];
      [(_MKStackView *)self setClipsToBounds:1];
      WeakRetained = objc_loadWeakRetained(&self->_stackDelegate);
      v84 = v12;
      v85 = v9;
      if (WeakRetained)
      {
        v29 = objc_loadWeakRetained(&self->_stackDelegate);
        v30 = objc_opt_respondsToSelector();
      }

      else
      {
        v30 = 0;
      }

      selfCopy = self;
      [(_MKStackView *)self bounds];
      Width = CGRectGetWidth(v126);
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      obj = v26;
      v38 = [obj countByEnumeratingWithState:&v112 objects:v123 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v113;
        v41 = *MEMORY[0x1E695EFF8];
        v42 = *(MEMORY[0x1E695EFF8] + 8);
        do
        {
          v43 = 0;
          do
          {
            if (*v113 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v112 + 1) + 8 * v43);
            widthAnchor = [v44 widthAnchor];
            v46 = [widthAnchor constraintEqualToConstant:Width];

            [v46 setActive:1];
            [v44 _mapkit_layoutIfNeeded];
            [v46 setActive:0];
            [v44 frame];
            v48 = v47;
            MaxY = v49;
            v52 = v51;
            v54 = v53;
            v55 = [(NSArray *)selfCopy->_stackedSubviews indexOfObject:v44];
            if (!v55)
            {
              v56 = 0;
              MaxY = v42;
              v48 = v41;
              if ((v30 & 1) == 0)
              {
                goto LABEL_46;
              }

LABEL_45:
              v57 = objc_loadWeakRetained(&selfCopy->_stackDelegate);
              [v57 stackView:selfCopy distanceBetweenUpperView:v56 andLowerView:v44];
              MaxY = MaxY + v58;

              goto LABEL_46;
            }

            if (v55 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v56 = 0;
              if (v30)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v56 = [(NSArray *)selfCopy->_stackedSubviews objectAtIndexedSubscript:v55 - 1];
              [v56 frame];
              MaxY = CGRectGetMaxY(v127);
              v48 = 0.0;
              if (v30)
              {
                goto LABEL_45;
              }
            }

LABEL_46:
            [v44 setFrame:{v48, MaxY, v52, v54}];
            [v44 setAlpha:0.0];

            ++v43;
          }

          while (v39 != v43);
          v59 = [obj countByEnumeratingWithState:&v112 objects:v123 count:16];
          v39 = v59;
        }

        while (v59);
      }

      v90 = [MEMORY[0x1E695DF70] arrayWithCapacity:{4 * objc_msgSend(v86, "count")}];
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v87 = v86;
      v91 = [v87 countByEnumeratingWithState:&v108 objects:v122 count:16];
      if (v91)
      {
        v89 = *v109;
        do
        {
          for (j = 0; j != v91; ++j)
          {
            if (*v109 != v89)
            {
              objc_enumerationMutation(v87);
            }

            v61 = *(*(&v108 + 1) + 8 * j);
            [v61 frame];
            v63 = v62;
            v65 = v64;
            v67 = v66;
            v69 = v68;
            [v61 removeFromSuperview];
            v107.receiver = selfCopy;
            v107.super_class = _MKStackView;
            [(_MKStackView *)&v107 addSubview:v61];
            topAnchor = [v61 topAnchor];
            topAnchor2 = [(_MKStackView *)selfCopy topAnchor];
            v128.origin.x = v63;
            v128.origin.y = v65;
            v128.size.width = v67;
            v128.size.height = v69;
            v70 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:CGRectGetMinY(v128)];
            v121[0] = v70;
            leftAnchor = [v61 leftAnchor];
            leftAnchor2 = [(_MKStackView *)selfCopy leftAnchor];
            v129.origin.x = v63;
            v129.origin.y = v65;
            v129.size.width = v67;
            v129.size.height = v69;
            v73 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:CGRectGetMinX(v129)];
            v121[1] = v73;
            widthAnchor2 = [v61 widthAnchor];
            v130.origin.x = v63;
            v130.origin.y = v65;
            v130.size.width = v67;
            v130.size.height = v69;
            v75 = [widthAnchor2 constraintEqualToConstant:CGRectGetWidth(v130)];
            v121[2] = v75;
            heightAnchor = [v61 heightAnchor];
            v131.origin.x = v63;
            v131.origin.y = v65;
            v131.size.width = v67;
            v131.size.height = v69;
            v77 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v131)];
            v121[3] = v77;
            v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:4];
            [v90 addObjectsFromArray:v78];
          }

          v91 = [v87 countByEnumeratingWithState:&v108 objects:v122 count:16];
        }

        while (v91);
      }

      [MEMORY[0x1E696ACD8] activateConstraints:v90];
      [(_MKStackView *)selfCopy _createConstraints];
      v79 = [obj count];
      v80 = dbl_1A30F6EB0[v79 < [v87 count]];
      v81 = MEMORY[0x1E69DD250];
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __57___MKStackView_setStackedSubviews_animated_isNeedLayout___block_invoke;
      v104[3] = &unk_1E76CCC28;
      v104[4] = selfCopy;
      v105 = obj;
      v106 = v87;
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __57___MKStackView_setStackedSubviews_animated_isNeedLayout___block_invoke_2;
      v100[3] = &unk_1E76C6DF0;
      v101 = v106;
      v102 = selfCopy;
      v103 = clipsToBounds;
      v82 = obj;
      [v81 _mapkit_animateWithDuration:v104 animations:v100 completion:v80];

      v12 = v84;
      v9 = v85;
      v33 = v86;
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v31 = v22;
      v32 = [v31 countByEnumeratingWithState:&v96 objects:v120 count:16];
      v33 = v22;
      if (v32)
      {
        v34 = v32;
        v35 = *v97;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v97 != v35)
            {
              objc_enumerationMutation(v31);
            }

            [*(*(&v96 + 1) + 8 * k) removeFromSuperview];
          }

          v34 = [v31 countByEnumeratingWithState:&v96 objects:v120 count:16];
        }

        while (v34);
      }

      [(_MKStackView *)self _createConstraints];
    }
  }
}

- (_MKStackView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _MKStackView;
  v3 = [(_MKStackView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    viewsNeedingWidthConstraints = v3->_viewsNeedingWidthConstraints;
    v3->_viewsNeedingWidthConstraints = weakObjectsHashTable;
  }

  return v3;
}

@end