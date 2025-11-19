@interface CarCardsUpdate
- (BOOL)_shouldClearConfiguration:(id)a3 beforeUpdate:(id)a4;
- (CarCardsUpdate)init;
- (CarCardsUpdateDelegate)delegate;
- (GroupAnimation)parentAnimation;
- (unint64_t)decrementNestCounter;
- (unint64_t)incrementNestCounter;
- (void)_applyAndPerformLayoutForConfigurations:(id)a3 allowAnimations:(BOOL)a4;
- (void)_configurations:(id)a3 getVisible:(id *)a4 hidden:(id *)a5;
- (void)_markConfigurations:(id)a3 asTransitioning:(BOOL)a4;
- (void)_performLayoutAllowingAnimations:(BOOL)a3;
- (void)_runUpdatesForConfigurations:(id)a3 allowAnimations:(BOOL)a4 layoutReloads:(id *)a5 contentReloads:(id *)a6 otherReloads:(id *)a7;
- (void)addCompletionBlock:(id)a3;
- (void)deleteCardConfiguration:(id)a3;
- (void)insertCardConfiguration:(id)a3 block:(id)a4;
- (void)reloadCardConfiguration:(id)a3 block:(id)a4;
- (void)run;
- (void)runCompletionBlocks;
- (void)validateUpdatesUsingBlock:(id)a3;
@end

@implementation CarCardsUpdate

- (CarCardsUpdate)init
{
  v14.receiver = self;
  v14.super_class = CarCardsUpdate;
  v2 = [(CarCardsUpdate *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    deletionsByKey = v2->_deletionsByKey;
    v2->_deletionsByKey = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    reloadsByKey = v2->_reloadsByKey;
    v2->_reloadsByKey = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    insertionsByKey = v2->_insertionsByKey;
    v2->_insertionsByKey = v7;

    v9 = objc_alloc_init(NSMutableArray);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v9;

    v11 = +[NSMapTable weakToStrongObjectsMapTable];
    updatesByConfiguration = v2->_updatesByConfiguration;
    v2->_updatesByConfiguration = v11;
  }

  return v2;
}

- (unint64_t)incrementNestCounter
{
  v2 = self->_nestCounter + 1;
  self->_nestCounter = v2;
  return v2;
}

- (unint64_t)decrementNestCounter
{
  nestCounter = self->_nestCounter;
  if (!nestCounter)
  {
    return 0;
  }

  result = nestCounter - 1;
  self->_nestCounter = nestCounter - 1;
  return result;
}

- (void)run
{
  if (![(CarCardsUpdate *)self hasUpdates])
  {
    v12 = sub_1000835D4();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_96:

      [(CarCardsUpdate *)self runCompletionBlocks];
      return;
    }

    v13 = self;
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_95;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarCardsUpdate *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_20;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_20:

LABEL_95:
    *buf = 138543362;
    v288 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Nothing to update, run completion blocks and exit", buf, 0xCu);

    goto LABEL_96;
  }

  if (!self->_animated)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_22;
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = sub_1000835D4();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_11:

      goto LABEL_12;
    }

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarCardsUpdate *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_10;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_10:

    v10 = v9;
    *buf = 138543362;
    v288 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Reduce motion enabled, running cards update without animation", buf, 0xCu);

    goto LABEL_11;
  }

  v11 = 1;
LABEL_22:
  v19 = [(NSMutableDictionary *)self->_deletionsByKey allValues];
  v20 = [(NSMutableDictionary *)self->_reloadsByKey allValues];
  v231 = [(NSMutableDictionary *)self->_insertionsByKey allValues];
  v21 = sub_1000835D4();
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    goto LABEL_29;
  }

  v22 = self;
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  if (objc_opt_respondsToSelector())
  {
    v25 = [(CarCardsUpdate *)v22 performSelector:"accessibilityIdentifier"];
    v26 = v25;
    if (v25 && ![v25 isEqualToString:v24])
    {
      v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

      goto LABEL_28;
    }
  }

  v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_28:

  v28 = v27;
  v29 = [v19 count];
  v30 = [v20 count];
  v31 = [v231 count];
  *buf = 138544130;
  v288 = v28;
  v289 = 2048;
  v290 = v29;
  v291 = 2048;
  v292 = v30;
  v293 = 2048;
  v294 = v31;
  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}@] %lu deletions, %lu reloads, %lu insertions", buf, 0x2Au);

LABEL_29:
  if (![v231 count])
  {
    goto LABEL_38;
  }

  v32 = sub_1000835D4();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = self;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    if (objc_opt_respondsToSelector())
    {
      v36 = [(CarCardsUpdate *)v33 performSelector:"accessibilityIdentifier"];
      v37 = v36;
      if (v36 && ![v36 isEqualToString:v35])
      {
        v38 = [NSString stringWithFormat:@"%@<%p, %@>", v35, v33, v37];

        goto LABEL_36;
      }
    }

    v38 = [NSString stringWithFormat:@"%@<%p>", v35, v33];
LABEL_36:

    v39 = v38;
    v40 = [v231 count];
    *buf = 138543618;
    v288 = v39;
    v289 = 2048;
    v290 = v40;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[%{public}@] %lu insertions, perform updates immediately", buf, 0x16u);
  }

  [(CarCardsUpdate *)self _runUpdatesForConfigurations:v231 allowAnimations:0];
LABEL_38:
  v285 = 0;
  v284 = 0;
  [(CarCardsUpdate *)self _configurations:v19 getVisible:&v285 hidden:&v284];
  v227 = v285;
  v41 = v284;
  v226 = v41;
  if ([v41 count])
  {
    v42 = [v41 count];
    v43 = v42 != [v19 count];
  }

  else
  {
    v43 = 1;
  }

  v283 = 0;
  v282 = 0;
  [(CarCardsUpdate *)self _configurations:v20 getVisible:&v283 hidden:&v282];
  v230 = v283;
  v44 = v282;
  v229 = v44;
  if ([v44 count])
  {
    v45 = [v44 count];
    if (v45 == [v20 count] && (v11 & 1) != 0 && !v43 && !objc_msgSend(v231, "count"))
    {
      v46 = sub_1000835D4();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
LABEL_51:

        v11 = 0;
        goto LABEL_52;
      }

      v47 = self;
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      if (objc_opt_respondsToSelector())
      {
        v50 = [(CarCardsUpdate *)v47 performSelector:"accessibilityIdentifier"];
        v51 = v50;
        if (v50 && ![v50 isEqualToString:v49])
        {
          v52 = [NSString stringWithFormat:@"%@<%p, %@>", v49, v47, v51];

          goto LABEL_50;
        }
      }

      v52 = [NSString stringWithFormat:@"%@<%p>", v49, v47];
LABEL_50:

      v53 = v52;
      *buf = 138543362;
      v288 = v53;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "[%{public}@] Only updates are hidden reloads or deletions, not animating", buf, 0xCu);

      goto LABEL_51;
    }
  }

LABEL_52:
  if ([v19 count])
  {
    v54 = [(CarCardsUpdate *)self delegate];
    [v54 cardsUpdate:self prepareForUpdate:0 withCardConfigurations:v19];
  }

  if ([v20 count])
  {
    v55 = [(CarCardsUpdate *)self delegate];
    [v55 cardsUpdate:self prepareForUpdate:1 withCardConfigurations:v20];
  }

  if ([v231 count])
  {
    v56 = [(CarCardsUpdate *)self delegate];
    [v56 cardsUpdate:self prepareForUpdate:2 withCardConfigurations:v231];
  }

  v57 = sub_1000835D4();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    v58 = self;
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    if (objc_opt_respondsToSelector())
    {
      v61 = [(CarCardsUpdate *)v58 performSelector:"accessibilityIdentifier"];
      v62 = v61;
      if (v61 && ![v61 isEqualToString:v60])
      {
        v63 = [NSString stringWithFormat:@"%@<%p, %@>", v60, v58, v62];

        goto LABEL_64;
      }
    }

    v63 = [NSString stringWithFormat:@"%@<%p>", v60, v58];
LABEL_64:

    v64 = v63;
    v65 = v64;
    v66 = @"not ";
    if (v11)
    {
      v66 = &stru_1016631F0;
    }

    *buf = 138543618;
    v288 = v64;
    v289 = 2112;
    v290 = v66;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "[%{public}@] Updates will %@run animated", buf, 0x16u);
  }

  v228 = v19;

  if (v11)
  {
    v67 = [(CarCardsUpdate *)self parentAnimation];
    if (v67)
    {
      v68 = [(CarCardsUpdate *)self parentAnimation];
      [v68 duration];
      v70 = v69;
    }

    else
    {
      v70 = 1.0;
    }

    if (![v229 count])
    {
LABEL_107:
      if (![v226 count])
      {
        goto LABEL_123;
      }

      v102 = sub_1000835D4();
      if (!os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
      {
LABEL_115:

        v272 = 0u;
        v273 = 0u;
        v270 = 0u;
        v271 = 0u;
        v111 = v226;
        v112 = [v111 countByEnumeratingWithState:&v270 objects:v299 count:16];
        if (v112)
        {
          v113 = v112;
          v114 = *v271;
          do
          {
            for (i = 0; i != v113; i = i + 1)
            {
              if (*v271 != v114)
              {
                objc_enumerationMutation(v111);
              }

              [*(*(&v270 + 1) + 8 * i) reset];
            }

            v113 = [v111 countByEnumeratingWithState:&v270 objects:v299 count:16];
          }

          while (v113);
        }

LABEL_123:
        if (![v231 count])
        {
          goto LABEL_175;
        }

        v116 = sub_1000835D4();
        if (!os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
        {
LABEL_174:

          [(CarCardsUpdate *)self _applyAndPerformLayoutForConfigurations:v231 allowAnimations:0];
LABEL_175:
          v269 = 0;
          v268 = 0;
          v267 = 0;
          [(CarCardsUpdate *)self _runUpdatesForConfigurations:v230 allowAnimations:0 layoutReloads:&v269 contentReloads:&v268 otherReloads:&v267];
          v225 = v269;
          v151 = v268;
          v152 = v267;
          v222 = v152;
          v223 = v151;
          if (![v20 count])
          {
            goto LABEL_187;
          }

          v153 = sub_1000835D4();
          if (!os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
          {
LABEL_186:

LABEL_187:
            v166 = sub_1000835D4();
            if (!os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
            {
              goto LABEL_197;
            }

            v167 = self;
            if (!v167)
            {
              v172 = @"<nil>";
              goto LABEL_196;
            }

            v168 = objc_opt_class();
            v169 = NSStringFromClass(v168);
            if (objc_opt_respondsToSelector())
            {
              v170 = [(CarCardsUpdate *)v167 performSelector:"accessibilityIdentifier"];
              v171 = v170;
              if (v170 && ![v170 isEqualToString:v169])
              {
                v172 = [NSString stringWithFormat:@"%@<%p, %@>", v169, v167, v171];

                goto LABEL_194;
              }
            }

            v172 = [NSString stringWithFormat:@"%@<%p>", v169, v167];
LABEL_194:

LABEL_196:
            v173 = v172;
            *buf = 138543362;
            v288 = v173;
            _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_INFO, "[%{public}@] Starting animated update chain", buf, 0xCu);

            v151 = v223;
LABEL_197:
            v174 = v70 * 0.25;

            [NSMutableArray arrayWithCapacity:3];
            v261[0] = _NSConcreteStackBlock;
            v261[1] = 3221225472;
            v261[2] = sub_10008EF80;
            v175 = v261[3] = &unk_101653CE8;
            v262 = v175;
            v263 = self;
            v264 = v19;
            v265 = v20;
            v176 = v231;
            v266 = v176;
            v224 = objc_retainBlock(v261);
            p_info = &OBJC_METACLASS___ParkedCarHeaderButtonsSectionController.info;
            if ([v230 count])
            {
              v178 = +[GroupAnimation animation];
              [v178 setDuration:v70 * 0.25];
              [v178 setOptions:0x20000];
              if ([v151 count])
              {
                v259[0] = _NSConcreteStackBlock;
                v259[1] = 3221225472;
                v259[2] = sub_100D918E4;
                v259[3] = &unk_101661A90;
                v259[4] = self;
                v260 = v151;
                v257[0] = _NSConcreteStackBlock;
                v257[1] = 3221225472;
                v257[2] = sub_100D91A98;
                v257[3] = &unk_101661570;
                v257[4] = self;
                v258 = v260;
                [v178 addAnimations:v259 completion:v257];
              }

              if ([v225 count])
              {
                v255[0] = _NSConcreteStackBlock;
                v255[1] = 3221225472;
                v255[2] = sub_100D91C38;
                v255[3] = &unk_101661A90;
                v255[4] = self;
                v256 = v225;
                v253[0] = _NSConcreteStackBlock;
                v253[1] = 3221225472;
                v253[2] = sub_100D91DFC;
                v253[3] = &unk_101661570;
                v253[4] = self;
                v254 = v256;
                [v178 addAnimations:v255 completion:v253];
              }

              if ([v152 count])
              {
                v251[0] = _NSConcreteStackBlock;
                v251[1] = 3221225472;
                v251[2] = sub_100D91FAC;
                v251[3] = &unk_101661570;
                v251[4] = self;
                v252 = v152;
                [v178 addAnimations:0 completion:v251];
              }

              [v178 addAnimations:0 completion:v224];
              [v175 addObject:v178];

              v179 = v70;
              p_info = (&OBJC_METACLASS___ParkedCarHeaderButtonsSectionController + 32);
            }

            else
            {
              v179 = v70 * 0.75;
            }

            v180 = v70 * 0.5;
            if ([v227 count] || objc_msgSend(v225, "count") || objc_msgSend(v176, "count"))
            {
              v181 = [p_info + 446 animation];
              [v181 setDuration:v180];
              [v181 setSpringDamping:0.800000012];
              [v181 setInitialVelocity:0.100000001];
              [v181 setOptions:0];
              if ([v227 count])
              {
                v249[0] = _NSConcreteStackBlock;
                v249[1] = 3221225472;
                v249[2] = sub_100D9214C;
                v249[3] = &unk_101661A90;
                v249[4] = self;
                v250 = v227;
                v247[0] = _NSConcreteStackBlock;
                v247[1] = 3221225472;
                v247[2] = sub_100D92398;
                v247[3] = &unk_101661570;
                v247[4] = self;
                v248 = v250;
                [v181 addAnimations:v249 completion:v247];
              }

              if ([v225 count])
              {
                v245[0] = _NSConcreteStackBlock;
                v245[1] = 3221225472;
                v245[2] = sub_10008DCA0;
                v245[3] = &unk_101661A90;
                v245[4] = self;
                v246 = v225;
                [v181 addAnimations:v245 completion:0];
              }

              v151 = v223;
              if ([v176 count])
              {
                v243[0] = _NSConcreteStackBlock;
                v243[1] = 3221225472;
                v243[2] = sub_100D925C4;
                v243[3] = &unk_101661A90;
                v243[4] = self;
                v244 = v176;
                [v181 addAnimations:v243 completion:0];
              }

              if ([v181 hasAnimations])
              {
                v242[0] = _NSConcreteStackBlock;
                v242[1] = 3221225472;
                v242[2] = sub_100D9281C;
                v242[3] = &unk_101661B18;
                v242[4] = self;
                [v181 addAnimations:v242 completion:v224];
              }

              [v175 addObject:v181];
            }

            else
            {
              v179 = v179 - v180;
            }

            if ([v151 count])
            {
              v182 = [p_info + 446 animation];
              [v182 setDuration:v174];
              [v182 setOptions:0x10000];
              if ([v151 count])
              {
                v240[0] = _NSConcreteStackBlock;
                v240[1] = 3221225472;
                v240[2] = sub_100D92828;
                v240[3] = &unk_101661A90;
                v240[4] = self;
                v241 = v151;
                v238[0] = _NSConcreteStackBlock;
                v238[1] = 3221225472;
                v238[2] = sub_100D929DC;
                v238[3] = &unk_101661570;
                v238[4] = self;
                v239 = v241;
                [v182 addAnimations:v240 completion:v238];
              }

              [v182 addAnimations:0 completion:v224];
              [v175 addObject:v182];
            }

            else
            {
              v179 = v179 - v174;
            }

            v183 = [NSPredicate predicateWithFormat:@"isEmpty == NO"];
            [v175 filterUsingPredicate:v183];

            if ([v175 count])
            {
              v184 = [(CarCardsUpdate *)self parentAnimation];
              if (!v184 || (v185 = v184, -[CarCardsUpdate parentAnimation](self, "parentAnimation"), v186 = objc_claimAutoreleasedReturnValue(), v187 = [v186 hasStarted], v186, v185, (v187 & 1) != 0))
              {
                v188 = sub_1000835D4();
                if (!os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
                {
LABEL_254:

                  v210 = [v175 firstObject];
                  [v210 runWithCurrentOptions];

LABEL_277:
                  goto LABEL_278;
                }

                v189 = self;
                if (!v189)
                {
                  v194 = @"<nil>";
                  goto LABEL_253;
                }

                v190 = objc_opt_class();
                v191 = NSStringFromClass(v190);
                if (objc_opt_respondsToSelector())
                {
                  v192 = [(CarCardsUpdate *)v189 performSelector:"accessibilityIdentifier"];
                  v193 = v192;
                  if (v192 && ![v192 isEqualToString:v191])
                  {
                    v194 = [NSString stringWithFormat:@"%@<%p, %@>", v191, v189, v193];

                    goto LABEL_233;
                  }
                }

                v194 = [NSString stringWithFormat:@"%@<%p>", v191, v189];
LABEL_233:

LABEL_253:
                v209 = v194;
                *buf = 138543362;
                v288 = v209;
                _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_INFO, "[%{public}@] Running first animation", buf, 0xCu);

                v151 = v223;
                goto LABEL_254;
              }

              v202 = sub_1000835D4();
              if (!os_log_type_enabled(v202, OS_LOG_TYPE_INFO))
              {
LABEL_269:

                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                v213 = v175;
                v214 = [v213 countByEnumeratingWithState:&v234 objects:v286 count:16];
                if (v214)
                {
                  v215 = v214;
                  v216 = *v235;
                  do
                  {
                    for (j = 0; j != v215; j = j + 1)
                    {
                      if (*v235 != v216)
                      {
                        objc_enumerationMutation(v213);
                      }

                      v218 = *(*(&v234 + 1) + 8 * j);
                      v219 = [(CarCardsUpdate *)self parentAnimation];
                      [v219 addChildAnimation:v218];
                    }

                    v215 = [v213 countByEnumeratingWithState:&v234 objects:v286 count:16];
                  }

                  while (v215);
                }

                v220 = [(CarCardsUpdate *)self parentAnimation];
                [v220 setDuration:v179];

                v221 = [(CarCardsUpdate *)self parentAnimation];
                v232[0] = _NSConcreteStackBlock;
                v232[1] = 3221225472;
                v232[2] = sub_100D92BC0;
                v232[3] = &unk_101661B18;
                v233 = v213;
                [v221 addPreparation:v232];

                v19 = v228;
                v152 = v222;
                v151 = v223;
                goto LABEL_277;
              }

              v203 = self;
              if (!v203)
              {
                v208 = @"<nil>";
                goto LABEL_268;
              }

              v204 = objc_opt_class();
              v205 = NSStringFromClass(v204);
              if (objc_opt_respondsToSelector())
              {
                v206 = [(CarCardsUpdate *)v203 performSelector:"accessibilityIdentifier"];
                v207 = v206;
                if (v206 && ![v206 isEqualToString:v205])
                {
                  v208 = [NSString stringWithFormat:@"%@<%p, %@>", v205, v203, v207];

                  goto LABEL_249;
                }
              }

              v208 = [NSString stringWithFormat:@"%@<%p>", v205, v203];
LABEL_249:

LABEL_268:
              v212 = v208;
              *buf = 138543362;
              v288 = v212;
              _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_INFO, "[%{public}@] Scheduling animation to run with parent", buf, 0xCu);

              goto LABEL_269;
            }

            v195 = sub_1000835D4();
            if (!os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
            {
LABEL_258:

              [(CarCardsUpdate *)self runCompletionBlocks];
              goto LABEL_277;
            }

            v196 = self;
            if (!v196)
            {
              v201 = @"<nil>";
              goto LABEL_257;
            }

            v197 = objc_opt_class();
            v198 = NSStringFromClass(v197);
            if (objc_opt_respondsToSelector())
            {
              v199 = [(CarCardsUpdate *)v196 performSelector:"accessibilityIdentifier"];
              v200 = v199;
              if (v199 && ![v199 isEqualToString:v198])
              {
                v201 = [NSString stringWithFormat:@"%@<%p, %@>", v198, v196, v200];

                goto LABEL_241;
              }
            }

            v201 = [NSString stringWithFormat:@"%@<%p>", v198, v196];
LABEL_241:

            v151 = v223;
LABEL_257:

            v211 = v201;
            *buf = 138543362;
            v288 = v211;
            _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_ERROR, "[%{public}@] No animations were created, run completion blocks and exit", buf, 0xCu);

            v19 = v228;
            goto LABEL_258;
          }

          v154 = self;
          if (!v154)
          {
            v159 = @"<nil>";
            goto LABEL_185;
          }

          v155 = objc_opt_class();
          v156 = NSStringFromClass(v155);
          if (objc_opt_respondsToSelector())
          {
            v157 = [(CarCardsUpdate *)v154 performSelector:"accessibilityIdentifier"];
            v158 = v157;
            if (v157 && ![v157 isEqualToString:v156])
            {
              v159 = [NSString stringWithFormat:@"%@<%p, %@>", v156, v154, v158];

              goto LABEL_183;
            }
          }

          v159 = [NSString stringWithFormat:@"%@<%p>", v156, v154];
LABEL_183:

LABEL_185:
          v160 = v159;
          v161 = [v230 count];
          v162 = [v20 count];
          v163 = [v225 count];
          v151 = v223;
          v164 = [v223 count];
          v165 = [v152 count];
          *buf = 138544642;
          v288 = v160;
          v289 = 2048;
          v290 = v161;
          v291 = 2048;
          v292 = v162;
          v293 = 2048;
          v294 = v163;
          v295 = 2048;
          v296 = v164;
          v297 = 2048;
          v298 = v165;
          _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_INFO, "[%{public}@] %lu/%lu reloads are visible (%lu layout, %lu content, %lu other)", buf, 0x3Eu);

          v19 = v228;
          goto LABEL_186;
        }

        v117 = self;
        if (!v117)
        {
          v122 = @"<nil>";
          goto LABEL_173;
        }

        v118 = objc_opt_class();
        v119 = NSStringFromClass(v118);
        if (objc_opt_respondsToSelector())
        {
          v120 = [(CarCardsUpdate *)v117 performSelector:"accessibilityIdentifier"];
          v121 = v120;
          if (v120 && ![v120 isEqualToString:v119])
          {
            v122 = [NSString stringWithFormat:@"%@<%p, %@>", v119, v117, v121];

            goto LABEL_131;
          }
        }

        v122 = [NSString stringWithFormat:@"%@<%p>", v119, v117];
LABEL_131:

LABEL_173:
        v149 = v122;
        v150 = [v231 count];
        *buf = 138543618;
        v288 = v149;
        v289 = 2048;
        v290 = v150;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_INFO, "[%{public}@] %lu insertions, perform layout immediately", buf, 0x16u);

        goto LABEL_174;
      }

      v103 = self;
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      if (objc_opt_respondsToSelector())
      {
        v106 = [(CarCardsUpdate *)v103 performSelector:"accessibilityIdentifier"];
        v107 = v106;
        if (v106 && ![v106 isEqualToString:v105])
        {
          v108 = [NSString stringWithFormat:@"%@<%p, %@>", v105, v103, v107];

          goto LABEL_114;
        }
      }

      v108 = [NSString stringWithFormat:@"%@<%p>", v105, v103];
LABEL_114:

      v109 = v108;
      v110 = [v229 count];
      *buf = 138543618;
      v288 = v109;
      v289 = 2048;
      v290 = v110;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "[%{public}@] %lu hidden deletions, remove immediately", buf, 0x16u);

      goto LABEL_115;
    }

    v93 = sub_1000835D4();
    if (!os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
LABEL_106:

      [(CarCardsUpdate *)self _runUpdatesForConfigurations:v229 allowAnimations:0];
      [(CarCardsUpdate *)self _applyAndPerformLayoutForConfigurations:v229 allowAnimations:0];
      goto LABEL_107;
    }

    v94 = self;
    v95 = objc_opt_class();
    v96 = NSStringFromClass(v95);
    if (objc_opt_respondsToSelector())
    {
      v97 = [(CarCardsUpdate *)v94 performSelector:"accessibilityIdentifier"];
      v98 = v97;
      if (v97 && ![v97 isEqualToString:v96])
      {
        v99 = [NSString stringWithFormat:@"%@<%p, %@>", v96, v94, v98];

        goto LABEL_105;
      }
    }

    v99 = [NSString stringWithFormat:@"%@<%p>", v96, v94];
LABEL_105:

    v100 = v99;
    v101 = [v229 count];
    *buf = 138543618;
    v288 = v100;
    v289 = 2048;
    v290 = v101;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "[%{public}@] %lu hidden reloads, perform layout immediately", buf, 0x16u);

    goto LABEL_106;
  }

  v71 = sub_1000835D4();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    v72 = self;
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    if (objc_opt_respondsToSelector())
    {
      v75 = [(CarCardsUpdate *)v72 performSelector:"accessibilityIdentifier"];
      v76 = v75;
      if (v75 && ![v75 isEqualToString:v74])
      {
        v77 = [NSString stringWithFormat:@"%@<%p, %@>", v74, v72, v76];

        goto LABEL_76;
      }
    }

    v77 = [NSString stringWithFormat:@"%@<%p>", v74, v72];
LABEL_76:

    v78 = v77;
    v79 = [v19 count];
    *buf = 138543618;
    v288 = v78;
    v289 = 2048;
    v290 = v79;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "[%{public}@] %lu deletions will reset immediately", buf, 0x16u);
  }

  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v80 = v19;
  v81 = [v80 countByEnumeratingWithState:&v278 objects:v301 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v279;
    do
    {
      for (k = 0; k != v82; k = k + 1)
      {
        if (*v279 != v83)
        {
          objc_enumerationMutation(v80);
        }

        [*(*(&v278 + 1) + 8 * k) reset];
      }

      v82 = [v80 countByEnumeratingWithState:&v278 objects:v301 count:16];
    }

    while (v82);
  }

  if ([v80 count])
  {
    v85 = [(CarCardsUpdate *)self delegate];
    [v85 cardsUpdate:self finalizeUpdate:0 withCardConfigurations:v80];
  }

  v86 = sub_1000835D4();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
  {
    v87 = self;
    if (!v87)
    {
      v92 = @"<nil>";
      goto LABEL_133;
    }

    v88 = objc_opt_class();
    v89 = NSStringFromClass(v88);
    if (objc_opt_respondsToSelector())
    {
      v90 = [(CarCardsUpdate *)v87 performSelector:"accessibilityIdentifier"];
      v91 = v90;
      if (v90 && ![v90 isEqualToString:v89])
      {
        v92 = [NSString stringWithFormat:@"%@<%p, %@>", v89, v87, v91];

        goto LABEL_93;
      }
    }

    v92 = [NSString stringWithFormat:@"%@<%p>", v89, v87];
LABEL_93:

LABEL_133:
    v123 = v92;
    v124 = [v20 count];
    *buf = 138543618;
    v288 = v123;
    v289 = 2048;
    v290 = v124;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "[%{public}@] %lu reloads, will update immediately", buf, 0x16u);
  }

  [(CarCardsUpdate *)self _runUpdatesForConfigurations:v20 allowAnimations:1];
  if ([v20 count])
  {
    [(CarCardsUpdate *)self _applyAndPerformLayoutForConfigurations:v20 allowAnimations:1];
  }

  if ([v20 count])
  {
    v125 = [(CarCardsUpdate *)self delegate];
    [v125 cardsUpdate:self finalizeUpdate:1 withCardConfigurations:v20];
  }

  v126 = sub_1000835D4();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
  {
    v127 = self;
    if (!v127)
    {
      v132 = @"<nil>";
      goto LABEL_147;
    }

    v128 = objc_opt_class();
    v129 = NSStringFromClass(v128);
    if (objc_opt_respondsToSelector())
    {
      v130 = [(CarCardsUpdate *)v127 performSelector:"accessibilityIdentifier"];
      v131 = v130;
      if (v130 && ![v130 isEqualToString:v129])
      {
        v132 = [NSString stringWithFormat:@"%@<%p, %@>", v129, v127, v131];

        goto LABEL_145;
      }
    }

    v132 = [NSString stringWithFormat:@"%@<%p>", v129, v127];
LABEL_145:

LABEL_147:
    v133 = v132;
    v134 = [v231 count];
    *buf = 138543618;
    v288 = v133;
    v289 = 2048;
    v290 = v134;
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_INFO, "[%{public}@] %lu insertions, will unhide immediately", buf, 0x16u);
  }

  v276 = 0u;
  v277 = 0u;
  v274 = 0u;
  v275 = 0u;
  v135 = v231;
  v136 = [v135 countByEnumeratingWithState:&v274 objects:v300 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v275;
    do
    {
      for (m = 0; m != v137; m = m + 1)
      {
        if (*v275 != v138)
        {
          objc_enumerationMutation(v135);
        }

        [*(*(&v274 + 1) + 8 * m) setHidden:0];
      }

      v137 = [v135 countByEnumeratingWithState:&v274 objects:v300 count:16];
    }

    while (v137);
  }

  if ([v135 count])
  {
    [(CarCardsUpdate *)self _applyAndPerformLayoutForConfigurations:v135 allowAnimations:1];
  }

  if ([v135 count])
  {
    v140 = [(CarCardsUpdate *)self delegate];
    [v140 cardsUpdate:self finalizeUpdate:2 withCardConfigurations:v135];
  }

  v141 = sub_1000835D4();
  if (!os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
  {
    goto LABEL_169;
  }

  v142 = self;
  if (!v142)
  {
    v147 = @"<nil>";
    goto LABEL_168;
  }

  v143 = objc_opt_class();
  v144 = NSStringFromClass(v143);
  if (objc_opt_respondsToSelector())
  {
    v145 = [(CarCardsUpdate *)v142 performSelector:"accessibilityIdentifier"];
    v146 = v145;
    if (v145 && ![v145 isEqualToString:v144])
    {
      v147 = [NSString stringWithFormat:@"%@<%p, %@>", v144, v142, v146];

      goto LABEL_166;
    }
  }

  v147 = [NSString stringWithFormat:@"%@<%p>", v144, v142];
LABEL_166:

LABEL_168:
  v148 = v147;
  *buf = 138543362;
  v288 = v148;
  _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_INFO, "[%{public}@] Updates completed, running completion blocks.", buf, 0xCu);

LABEL_169:
  [(CarCardsUpdate *)self runCompletionBlocks];
LABEL_278:
}

- (CarCardsUpdateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GroupAnimation)parentAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentAnimation);

  return WeakRetained;
}

- (void)runCompletionBlocks
{
  v3 = [(NSMutableArray *)self->_completionBlocks copy];
  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)self->_deletionsByKey allValues];
        v12 = [(NSMutableDictionary *)self->_reloadsByKey allValues];
        v13 = [(NSMutableDictionary *)self->_insertionsByKey allValues];
        (*(v10 + 16))(v10, v11, v12, v13);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_configurations:(id)a3 getVisible:(id *)a4 hidden:(id *)a5
{
  v7 = a3;
  if (!v7)
  {
    goto LABEL_8;
  }

  v14 = v7;
  v8 = [NSPredicate predicateWithFormat:@"hidden == YES"];
  v9 = [v14 filteredArrayUsingPredicate:v8];
  if (![v9 count])
  {
    v11 = v14;
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = [v14 mutableCopy];
  [v10 removeObjectsInArray:v9];
  v11 = [v10 copy];

  if (a4)
  {
LABEL_4:
    v12 = v11;
    *a4 = v11;
  }

LABEL_5:
  if (a5)
  {
    v13 = v9;
    *a5 = v9;
  }

  v7 = v14;
LABEL_8:
}

- (void)_markConfigurations:(id)a3 asTransitioning:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setTransitioning:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_applyAndPerformLayoutForConfigurations:(id)a3 allowAnimations:(BOOL)a4
{
  v4 = a4;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100D9131C;
  v11 = &unk_101661A90;
  v12 = self;
  v5 = a3;
  v13 = v5;
  v6 = objc_retainBlock(&v8);
  v7 = v6;
  if (v4)
  {
    (v6[2])(v6);
  }

  else
  {
    [UIView performWithoutAnimation:v6, v8, v9, v10, v11, v12];
  }
}

- (void)_performLayoutAllowingAnimations:(BOOL)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D91434;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  v5 = v4;
  if (v3)
  {
    (v4[2])(v4);
  }

  else
  {
    [UIView performWithoutAnimation:v4];
  }
}

- (BOOL)_shouldClearConfiguration:(id)a3 beforeUpdate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 copy];
  v5[2](v5, v7);

  v8 = [v7 content];
  v9 = [v6 content];

  if (v8 == v9)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = ([v7 invalidationState] >> 1) & 1;
  }

  return v10;
}

- (void)_runUpdatesForConfigurations:(id)a3 allowAnimations:(BOOL)a4 layoutReloads:(id *)a5 contentReloads:(id *)a6 otherReloads:(id *)a7
{
  v10 = a4;
  v12 = a3;
  v13 = v12;
  if (a6)
  {
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
  if (a7)
  {
LABEL_4:
    v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100D91728;
  v26[3] = &unk_101653D50;
  v17 = v13;
  v27 = v17;
  v28 = self;
  v18 = v15;
  v29 = v18;
  v19 = v14;
  v30 = v19;
  v20 = v16;
  v31 = v20;
  v21 = objc_retainBlock(v26);
  v22 = v21;
  if (!v10)
  {
    [UIView performWithoutAnimation:v21];
    if (!v19)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v21[2])(v21);
  if (v19)
  {
LABEL_12:
    v23 = v19;
    *a6 = v19;
  }

LABEL_13:
  if (v18)
  {
    v24 = v18;
    *a5 = v18;
  }

  if (v20)
  {
    v25 = v20;
    *a7 = v20;
  }
}

- (void)validateUpdatesUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v5 = [(NSMutableDictionary *)self->_deletionsByKey allValues];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100D92EAC;
    v16[3] = &unk_101653CC0;
    v6 = v4;
    v16[4] = self;
    v17 = v6;
    v18 = &v19;
    [v5 enumerateObjectsUsingBlock:v16];
    if ((v20[3] & 1) == 0)
    {
      v7 = [(NSMutableDictionary *)self->_reloadsByKey allValues];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100D92F84;
      v13[3] = &unk_101653CC0;
      v8 = v6;
      v13[4] = self;
      v14 = v8;
      v15 = &v19;
      [v7 enumerateObjectsUsingBlock:v13];
      if ((v20[3] & 1) == 0)
      {
        v9 = [(NSMutableDictionary *)self->_insertionsByKey allValues];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100D9306C;
        v10[3] = &unk_101653CC0;
        v10[4] = self;
        v11 = v8;
        v12 = &v19;
        [v9 enumerateObjectsUsingBlock:v10];
      }
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (void)insertCardConfiguration:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 key];
  if (!v8)
  {
    goto LABEL_23;
  }

  [(NSMutableDictionary *)self->_deletionsByKey removeObjectForKey:v8];
  v9 = [v6 isHidden];
  v10 = sub_1000835D4();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if ((v9 & 1) == 0)
  {
    if (!v11)
    {
LABEL_22:

      [(CarCardsUpdate *)self reloadCardConfiguration:v6 block:v7];
      goto LABEL_23;
    }

    v23 = self;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(CarCardsUpdate *)v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_21;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_21:

    v29 = [v6 key];
    *buf = 138543618;
    v31 = v28;
    v32 = 2112;
    v33 = v29;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Attempted insert of %@ is already visible, assuming reload instead", buf, 0x16u);

    goto LABEL_22;
  }

  if (v11)
  {
    v12 = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarCardsUpdate *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_9;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_9:

    v18 = [v6 key];
    v19 = v18;
    v20 = @"block";
    *buf = 138543874;
    v31 = v17;
    v32 = 2112;
    if (!v7)
    {
      v20 = @"no block";
    }

    v33 = v18;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Adding insertion for %@ with %@", buf, 0x20u);
  }

  if (v7)
  {
    updatesByConfiguration = self->_updatesByConfiguration;
    v22 = objc_retainBlock(v7);
    [(NSMapTable *)updatesByConfiguration setObject:v22 forKey:v6];
  }

  [(NSMutableDictionary *)self->_insertionsByKey setObject:v6 forKeyedSubscript:v8];
  [(NSMutableDictionary *)self->_reloadsByKey removeObjectForKey:v8];
LABEL_23:
}

- (void)reloadCardConfiguration:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 key];
  if (!v8)
  {
    goto LABEL_12;
  }

  [(NSMutableDictionary *)self->_deletionsByKey removeObjectForKey:v8];
  [(NSMutableDictionary *)self->_insertionsByKey removeObjectForKey:v8];
  v9 = sub_1000835D4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = self;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarCardsUpdate *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_8;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_8:

    v16 = [v6 key];
    *buf = 138543618;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Adding reload for %@", buf, 0x16u);
  }

  if (v7)
  {
    updatesByConfiguration = self->_updatesByConfiguration;
    v18 = objc_retainBlock(v7);
    [(NSMapTable *)updatesByConfiguration setObject:v18 forKey:v6];
  }

  [(NSMutableDictionary *)self->_reloadsByKey setObject:v6 forKeyedSubscript:v8];
LABEL_12:
}

- (void)deleteCardConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  if (v5)
  {
    v6 = sub_1000835D4();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(NSMutableDictionary *)self->_insertionsByKey removeObjectForKey:v5];
      [(NSMutableDictionary *)self->_reloadsByKey removeObjectForKey:v5];
      [(NSMapTable *)self->_updatesByConfiguration removeObjectForKey:v4];
      [(NSMutableDictionary *)self->_deletionsByKey setObject:v4 forKeyedSubscript:v5];
      goto LABEL_13;
    }

    v7 = self;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_11;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarCardsUpdate *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_11:
    v13 = [v4 key];
    *buf = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Adding deletion for %@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
}

- (void)addCompletionBlock:(id)a3
{
  if (a3)
  {
    completionBlocks = self->_completionBlocks;
    v5 = [a3 copy];
    v4 = objc_retainBlock(v5);
    [(NSMutableArray *)completionBlocks addObject:v4];
  }
}

@end