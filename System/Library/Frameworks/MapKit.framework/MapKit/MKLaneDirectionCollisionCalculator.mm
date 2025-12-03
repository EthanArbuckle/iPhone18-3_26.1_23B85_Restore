@interface MKLaneDirectionCollisionCalculator
- (MKLaneDirectionCollisionCalculator)initWithDirections:(id)directions;
- (NSArray)directions;
- (void)_recalculateCollisions;
- (void)removeDirectionWithCollisionsLeastSimilarToDirection:(int)direction;
- (void)removeNextDirectionWithCollisions;
@end

@implementation MKLaneDirectionCollisionCalculator

- (void)removeDirectionWithCollisionsLeastSimilarToDirection:(int)direction
{
  if ([(MKLaneDirectionCollisionCalculator *)self hasCollisions])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__MKLaneDirectionCollisionCalculator_removeDirectionWithCollisionsLeastSimilarToDirection___block_invoke;
    v11[3] = &unk_1E76CABD0;
    v11[4] = self;
    v5 = MEMORY[0x1A58E9F30](v11);
    v6 = v5;
    if (direction <= 15)
    {
      if (direction <= 3)
      {
        if (direction < 2)
        {
          if (((*(v5 + 16))(v5, 256) & 1) == 0 && ((v6[2])(v6, 16) & 1) == 0 && ((v6[2])(v6, 8) & 1) == 0 && ((v6[2])(v6, 32) & 1) == 0 && ((v6[2])(v6, 4) & 1) == 0 && ((v6[2])(v6, 64) & 1) == 0 && ((v6[2])(v6, 2) & 1) == 0)
          {
            v6[2](v6, 128);
          }

          goto LABEL_85;
        }

        if (direction == 2 && ((*(v5 + 16))(v5, 16) & 1) == 0 && ((v6[2])(v6, 32) & 1) == 0 && ((v6[2])(v6, 64) & 1) == 0 && ((v6[2])(v6, 128) & 1) == 0 && ((v6[2])(v6, 256) & 1) == 0 && ((v6[2])(v6, 8) & 1) == 0)
        {
          v8 = (v6[2])(v6, 1);
LABEL_51:
          if ((v8 & 1) == 0)
          {
            v6[2](v6, 4);
          }

          goto LABEL_85;
        }

        goto LABEL_85;
      }

      if (direction != 4)
      {
        if (direction == 8 && ((*(v5 + 16))(v5, 16) & 1) == 0 && ((v6[2])(v6, 32) & 1) == 0 && ((v6[2])(v6, 64) & 1) == 0 && ((v6[2])(v6, 128) & 1) == 0 && ((v6[2])(v6, 1) & 1) == 0 && ((v6[2])(v6, 2) & 1) == 0)
        {
          v8 = (v6[2])(v6, 256);
          goto LABEL_51;
        }

LABEL_85:

        return;
      }

      if ((*(v5 + 16))(v5, 16) & 1) != 0 || ((v6[2])(v6, 32) & 1) != 0 || ((v6[2])(v6, 64) & 1) != 0 || ((v6[2])(v6, 128) & 1) != 0 || ((v6[2])(v6, 256) & 1) != 0 || ((v6[2])(v6, 1))
      {
        goto LABEL_85;
      }

      v7 = (v6[2])(v6, 2);
LABEL_60:
      if ((v7 & 1) == 0)
      {
        v6[2](v6, 8);
      }

      goto LABEL_85;
    }

    if (direction <= 63)
    {
      if (direction != 16)
      {
        if (direction == 32 && ((*(v5 + 16))(v5, 256) & 1) == 0 && ((v6[2])(v6, 8) & 1) == 0 && ((v6[2])(v6, 4) & 1) == 0 && ((v6[2])(v6, 2) & 1) == 0 && ((v6[2])(v6, 1) & 1) == 0 && ((v6[2])(v6, 16) & 1) == 0 && ((v6[2])(v6, 128) & 1) == 0)
        {
          v6[2](v6, 64);
        }

        goto LABEL_85;
      }

      if ((*(v5 + 16))(v5, 256) & 1) != 0 || ((v6[2])(v6, 8) & 1) != 0 || ((v6[2])(v6, 4) & 1) != 0 || ((v6[2])(v6, 2) & 1) != 0 || ((v6[2])(v6, 1))
      {
        goto LABEL_85;
      }

      v9 = (v6[2])(v6, 128);
    }

    else
    {
      if (direction == 64)
      {
        if ((*(v5 + 16))(v5, 256) & 1) != 0 || ((v6[2])(v6, 8) & 1) != 0 || ((v6[2])(v6, 4) & 1) != 0 || ((v6[2])(v6, 2) & 1) != 0 || ((v6[2])(v6, 1) & 1) != 0 || ((v6[2])(v6, 16))
        {
          goto LABEL_85;
        }

        v10 = (v6[2])(v6, 128);
        goto LABEL_83;
      }

      if (direction != 128)
      {
        if (direction != 256 || ((*(v5 + 16))(v5, 16) & 1) != 0 || ((v6[2])(v6, 32) & 1) != 0 || ((v6[2])(v6, 64) & 1) != 0 || ((v6[2])(v6, 128) & 1) != 0 || ((v6[2])(v6, 1) & 1) != 0 || ((v6[2])(v6, 2) & 1) != 0)
        {
          goto LABEL_85;
        }

        v7 = (v6[2])(v6, 4);
        goto LABEL_60;
      }

      if ((*(v5 + 16))(v5, 256) & 1) != 0 || ((v6[2])(v6, 8) & 1) != 0 || ((v6[2])(v6, 4) & 1) != 0 || ((v6[2])(v6, 2) & 1) != 0 || ((v6[2])(v6, 1))
      {
        goto LABEL_85;
      }

      v9 = (v6[2])(v6, 16);
    }

    if (v9)
    {
      goto LABEL_85;
    }

    v10 = (v6[2])(v6, 64);
LABEL_83:
    if ((v10 & 1) == 0)
    {
      v6[2](v6, 32);
    }

    goto LABEL_85;
  }
}

uint64_t __91__MKLaneDirectionCollisionCalculator_removeDirectionWithCollisionsLeastSimilarToDirection___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 16);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  if ([v4 containsObject:v5])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = [v8 unsignedIntegerValue];

    if (v9)
    {
      v10 = *(*(a1 + 32) + 16);
      v11 = [MEMORY[0x1E696AD98] numberWithInt:a2];
      [v10 removeObject:v11];

      [*(a1 + 32) _recalculateCollisions];
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (void)removeNextDirectionWithCollisions
{
  if ([(MKLaneDirectionCollisionCalculator *)self hasCollisions])
  {
    if ([(MKLaneDirectionCollisionCalculator *)self hasDirectionWithMaxCollisions])
    {
      [(NSMutableArray *)self->_directions removeObject:self->_directionWithMostCollisions];
    }

    else
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __71__MKLaneDirectionCollisionCalculator_removeNextDirectionWithCollisions__block_invoke;
      v4[3] = &unk_1E76CABD0;
      v4[4] = self;
      v3 = MEMORY[0x1A58E9F30](v4);
      if ((v3[2](v3, 256) & 1) == 0 && (v3[2](v3, 16) & 1) == 0 && (v3[2](v3, 8) & 1) == 0 && (v3[2](v3, 32) & 1) == 0 && (v3[2](v3, 2) & 1) == 0 && (v3[2](v3, 128) & 1) == 0 && (v3[2](v3, 4) & 1) == 0 && (v3[2](v3, 64) & 1) == 0 && !v3[2](v3, 1))
      {

        return;
      }
    }

    [(MKLaneDirectionCollisionCalculator *)self _recalculateCollisions];
  }
}

uint64_t __71__MKLaneDirectionCollisionCalculator_removeNextDirectionWithCollisions__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 16);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v6 = [v4 containsObject:v5];
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v9 unsignedIntegerValue];

    if (!v10)
    {
      return 0;
    }

    v11 = *(*(a1 + 32) + 16);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    [v11 removeObject:v5];
  }

  return v6;
}

- (void)_recalculateCollisions
{
  self->_hasCollisions = 0;
  directionWithMostCollisions = self->_directionWithMostCollisions;
  self->_directionWithMostCollisions = 0;

  [(NSMutableDictionary *)self->_collisionsForDirection removeAllObjects];
  if (!self->_collisionsForDirection)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    collisionsForDirection = self->_collisionsForDirection;
    self->_collisionsForDirection = v4;
  }

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  directions = self->_directions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MKLaneDirectionCollisionCalculator__recalculateCollisions__block_invoke;
  v7[3] = &unk_1E76CABA8;
  v7[4] = self;
  v7[5] = v8;
  [(NSMutableArray *)directions enumerateObjectsUsingBlock:v7];
  _Block_object_dispose(v8, 8);
}

void __60__MKLaneDirectionCollisionCalculator__recalculateCollisions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v113[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v6 = a3 + 1;
    v7 = [*(*(a1 + 32) + 16) count];
    v8 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a3 - 1];
    v9 = v8;
    if (v6 < v7)
    {
      v10 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:v6];
      v113[0] = v9;
      v113[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:2];

LABEL_8:
      goto LABEL_9;
    }

    v112 = v8;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v112;
LABEL_7:
    v11 = [v12 arrayWithObjects:v13 count:1];
    goto LABEL_8;
  }

  if ([*(*(a1 + 32) + 16) count] >= 2)
  {
    v9 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:1];
    v111 = v9;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v111;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_9:
  v14 = [v5 _mk_laneDirectionValue];
  v15 = 0;
  if (v14 > 15)
  {
    if (v14 <= 63)
    {
      if (v14 == 16)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v16 = v11;
        v46 = [v16 countByEnumeratingWithState:&v98 objects:v110 count:16];
        if (!v46)
        {
          goto LABEL_121;
        }

        v47 = v46;
        v15 = 0;
        v48 = *v99;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v99 != v48)
            {
              objc_enumerationMutation(v16);
            }

            if ([*(*(&v98 + 1) + 8 * i) _mk_laneDirectionValue] == 32)
            {
              ++v15;
            }
          }

          v47 = [v16 countByEnumeratingWithState:&v98 objects:v110 count:16];
        }

        while (v47);
      }

      else
      {
        if (v14 != 32)
        {
          goto LABEL_125;
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v16 = v11;
        v31 = [v16 countByEnumeratingWithState:&v94 objects:v109 count:16];
        if (!v31)
        {
          goto LABEL_121;
        }

        v32 = v31;
        v15 = 0;
        v33 = *v95;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v95 != v33)
            {
              objc_enumerationMutation(v16);
            }

            v35 = *(*(&v94 + 1) + 8 * j);
            if ([v35 _mk_laneDirectionValue] == 16 || objc_msgSend(v35, "_mk_laneDirectionValue") == 64)
            {
              ++v15;
            }
          }

          v32 = [v16 countByEnumeratingWithState:&v94 objects:v109 count:16];
        }

        while (v32);
      }
    }

    else
    {
      switch(v14)
      {
        case 64:
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v16 = v11;
          v50 = [v16 countByEnumeratingWithState:&v90 objects:v108 count:16];
          if (!v50)
          {
            goto LABEL_121;
          }

          v51 = v50;
          v15 = 0;
          v52 = *v91;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v91 != v52)
              {
                objc_enumerationMutation(v16);
              }

              v54 = *(*(&v90 + 1) + 8 * k);
              if ([v54 _mk_laneDirectionValue] == 32 || objc_msgSend(v54, "_mk_laneDirectionValue") == 128)
              {
                ++v15;
              }
            }

            v51 = [v16 countByEnumeratingWithState:&v90 objects:v108 count:16];
          }

          while (v51);
          break;
        case 128:
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v16 = v11;
          v55 = [v16 countByEnumeratingWithState:&v86 objects:v107 count:16];
          if (!v55)
          {
            goto LABEL_121;
          }

          v56 = v55;
          v15 = 0;
          v57 = *v87;
          do
          {
            for (m = 0; m != v56; ++m)
            {
              if (*v87 != v57)
              {
                objc_enumerationMutation(v16);
              }

              v59 = *(*(&v86 + 1) + 8 * m);
              if ([v59 _mk_laneDirectionValue] == 64 || objc_msgSend(v59, "_mk_laneDirectionValue") == 1)
              {
                ++v15;
              }
            }

            v56 = [v16 countByEnumeratingWithState:&v86 objects:v107 count:16];
          }

          while (v56);
          break;
        case 256:
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v16 = v11;
          v22 = [v16 countByEnumeratingWithState:&v66 objects:v102 count:16];
          if (!v22)
          {
            goto LABEL_121;
          }

          v23 = v22;
          v15 = 0;
          v24 = *v67;
          do
          {
            for (n = 0; n != v23; ++n)
            {
              if (*v67 != v24)
              {
                objc_enumerationMutation(v16);
              }

              if ([*(*(&v66 + 1) + 8 * n) _mk_laneDirectionValue] == 32)
              {
                ++v15;
              }
            }

            v23 = [v16 countByEnumeratingWithState:&v66 objects:v102 count:16];
          }

          while (v23);
          break;
        default:
          goto LABEL_125;
      }
    }
  }

  else if (v14 > 3)
  {
    if (v14 == 4)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v16 = v11;
      v41 = [v16 countByEnumeratingWithState:&v74 objects:v104 count:16];
      if (!v41)
      {
        goto LABEL_121;
      }

      v42 = v41;
      v15 = 0;
      v43 = *v75;
      do
      {
        for (ii = 0; ii != v42; ++ii)
        {
          if (*v75 != v43)
          {
            objc_enumerationMutation(v16);
          }

          v45 = *(*(&v74 + 1) + 8 * ii);
          if ([v45 _mk_laneDirectionValue] == 2 || objc_msgSend(v45, "_mk_laneDirectionValue") == 8)
          {
            ++v15;
          }
        }

        v42 = [v16 countByEnumeratingWithState:&v74 objects:v104 count:16];
      }

      while (v42);
    }

    else
    {
      if (v14 != 8)
      {
        goto LABEL_125;
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v16 = v11;
      v26 = [v16 countByEnumeratingWithState:&v70 objects:v103 count:16];
      if (!v26)
      {
        goto LABEL_121;
      }

      v27 = v26;
      v15 = 0;
      v28 = *v71;
      do
      {
        for (jj = 0; jj != v27; ++jj)
        {
          if (*v71 != v28)
          {
            objc_enumerationMutation(v16);
          }

          v30 = *(*(&v70 + 1) + 8 * jj);
          if ([v30 _mk_laneDirectionValue] == 4 || objc_msgSend(v30, "_mk_laneDirectionValue") == 256)
          {
            ++v15;
          }
        }

        v27 = [v16 countByEnumeratingWithState:&v70 objects:v103 count:16];
      }

      while (v27);
    }
  }

  else
  {
    if (v14 < 2)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v82 objects:v106 count:16];
      if (v17)
      {
        v18 = v17;
        v15 = 0;
        v19 = *v83;
        do
        {
          for (kk = 0; kk != v18; ++kk)
          {
            if (*v83 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v82 + 1) + 8 * kk);
            if ([v21 _mk_laneDirectionValue] == 128 || objc_msgSend(v21, "_mk_laneDirectionValue") == 2)
            {
              ++v15;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v82 objects:v106 count:16];
        }

        while (v18);
        goto LABEL_118;
      }

LABEL_121:
      v15 = 0;
      goto LABEL_124;
    }

    if (v14 != 2)
    {
      goto LABEL_125;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v16 = v11;
    v36 = [v16 countByEnumeratingWithState:&v78 objects:v105 count:16];
    if (!v36)
    {
      goto LABEL_121;
    }

    v37 = v36;
    v15 = 0;
    v38 = *v79;
    do
    {
      for (mm = 0; mm != v37; ++mm)
      {
        if (*v79 != v38)
        {
          objc_enumerationMutation(v16);
        }

        v40 = *(*(&v78 + 1) + 8 * mm);
        if ([v40 _mk_laneDirectionValue] == 1 || objc_msgSend(v40, "_mk_laneDirectionValue") == 4)
        {
          ++v15;
        }
      }

      v37 = [v16 countByEnumeratingWithState:&v78 objects:v105 count:16];
    }

    while (v37);
  }

LABEL_118:

  if (v15)
  {
    *(*(a1 + 32) + 32) = 1;
    v60 = *(*(a1 + 40) + 8);
    v61 = *(v60 + 24);
    if (v15 > v61)
    {
      *(v60 + 24) = v15;
      v62 = *(a1 + 32);
      v63 = v5;
      v16 = *(v62 + 24);
      *(v62 + 24) = v63;
LABEL_124:

      goto LABEL_125;
    }

    if (v15 == v61)
    {
      v64 = *(a1 + 32);
      v16 = *(v64 + 24);
      *(v64 + 24) = 0;
      goto LABEL_124;
    }
  }

LABEL_125:
  *(*(a1 + 32) + 32) = v15 != 0;
  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  [*(*(a1 + 32) + 8) setObject:v65 forKeyedSubscript:v5];
}

- (NSArray)directions
{
  v2 = [(NSMutableArray *)self->_directions copy];

  return v2;
}

- (MKLaneDirectionCollisionCalculator)initWithDirections:(id)directions
{
  directionsCopy = directions;
  v9.receiver = self;
  v9.super_class = MKLaneDirectionCollisionCalculator;
  v5 = [(MKLaneDirectionCollisionCalculator *)&v9 init];
  if (v5)
  {
    v6 = [directionsCopy mutableCopy];
    directions = v5->_directions;
    v5->_directions = v6;

    [(MKLaneDirectionCollisionCalculator *)v5 _recalculateCollisions];
  }

  return v5;
}

@end