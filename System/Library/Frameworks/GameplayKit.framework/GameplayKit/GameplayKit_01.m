void sub_2389A8DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v19 = v17;

  _Unwind_Resume(a1);
}

void GKCMinmaxStrategist::findBestMoveNPlayer(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v8 = a2;
  v9 = v8;
  ++*(a1 + 128);
  if (*(a1 + 184) == 1 && ([v8 isWinForPlayer:*(a1 + 80)] & 1) != 0)
  {
    v10 = 1;
  }

  else if (*(a1 + 185) == 1 && ([v9 isLossForPlayer:*(a1 + 80)] & 1) != 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  *a5 = *(a1 + 96) - a3;
  if (a3 < 1 || *a4)
  {
    GKCMinmaxStrategist::getScores(a1, v9, a3);
  }

  else
  {
    v11 = [v9 activePlayer];
    v12 = [v9 gameModelUpdatesForPlayer:v11];
    v13 = [v12 count];
    if (v13)
    {
      v33 = v12;
      v35 = 0;
      v36 = 0;
      v14 = *(*a1 + 8 * a3 - 8);
      if (*(a1 + 186) == 1)
      {
        v15 = v9;

        v14 = v15;
      }

      v16 = *(a1 + 48);
      v32 = v9;
      v17 = [*(a1 + 72) players];
      v18 = [v17 indexOfObject:v11];
      v19 = (v16 + 24 * a3);

      if (*(a1 + 120) >= 1)
      {
        v20 = 0;
        v21 = *v19;
        do
        {
          *(v21 + 8 * v20++) = 0x8000000000000000;
        }

        while (v20 < *(a1 + 120));
      }

      if (v13 >= 1)
      {
        for (i = 0; i != v13; ++i)
        {
          if ((*(a1 + 186) & 1) == 0)
          {
            [v14 setGameModel:v32];
          }

          v23 = [v33 objectAtIndexedSubscript:i];
          [v14 applyGameModelUpdate:v23];
          GKCMinmaxStrategist::findBestMoveNPlayer(a1, v14, a3 - 1, &v36, &v35);
          v24 = *(a1 + 48);
          if (*(a1 + 186) == 1)
          {
            [v14 unapplyGameModelUpdate:v23];
          }

          v25 = *(v24 + 24 * a3 - 24);
          v26 = *(v25 + 8 * v18);
          v27 = *v19;
          v28 = *(*v19 + 8 * v18);
          if (v26 > v28 || v26 == v28 && v35 < *a5)
          {
            if (*(a1 + 120) >= 1)
            {
              v29 = 0;
              do
              {
                *(v27 + 8 * v29) = *(v25 + 8 * v29);
                ++v29;
              }

              while (v29 < *(a1 + 120));
            }

            v30 = v35;
            *a4 = v36;
            *a5 = v30;
          }

          [v23 setValue:v26];
          if (*(a1 + 96) == a3)
          {
            GKCMinmaxStrategist::addMoveToConsideredMoves(a1, v23);
          }
        }
      }

      v11 = v31;
      v9 = v32;
      v12 = v33;
    }

    else
    {
      GKCMinmaxStrategist::getScores(a1, v9, a3);
    }
  }
}

void std::vector<objc_object  {objcproto11GKGameModel}* {__strong}>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v11 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + a2;
    if (v8 >> 61)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = v6 >> 3;
    v13 = 8 * a2;
    bzero((8 * v7), 8 * a2);
    v14 = 8 * v7 + v13;
    if (v5 != v4)
    {
      v15 = v4 - v5 - 8;
      v16 = v5;
      v17 = 0;
      if (v15 < 0x98)
      {
        goto LABEL_33;
      }

      if (v5 < v6 + (v15 & 0xFFFFFFFFFFFFFFF8) - 8 * v12 + 8)
      {
        v16 = v5;
        v17 = 0;
        if ((v5 + (v15 & 0xFFFFFFFFFFFFFFF8)) != -8)
        {
          goto LABEL_33;
        }
      }

      v18 = (v15 >> 3) + 1;
      v17 = (8 * (v18 & 0x3FFFFFFFFFFFFFFCLL));
      v16 = (v17 + v5);
      v19 = (-8 * v12 + 8 * v7 + 16);
      v20 = (v5 + 2);
      v21 = v18 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *(v20 - 1);
        v23 = *v20;
        *(v20 - 1) = 0uLL;
        *v20 = 0uLL;
        *(v19 - 1) = v22;
        *v19 = v23;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          v24 = *v16;
          *v16++ = 0;
          *v17++ = v24;
        }

        while (v16 != v4);
      }

      do
      {
        v25 = *v5++;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = 0;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<std::vector<long>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<long>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void GKCMinmaxStrategist::getScores(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = *(a1 + 48);
  v6 = [*(a1 + 72) players];
  v7 = 0;
  v8 = (v5 + 24 * a3);
  while (v7 < [v6 count])
  {
    v9 = [v6 objectAtIndexedSubscript:v7];
    *(*v8 + 8 * v7) = [v10 scoreForPlayer:v9];

    ++v7;
  }
}

uint64_t *std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#1}>(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return result;
  }

  if (a3 == 2)
  {
    v4 = *a2;
    if (*(*a2 + 32) > result[4])
    {
      v6 = *v4;
      v5 = v4[1];
      *(v6 + 8) = v5;
      *v5 = v6;
      v7 = *result;
      *(v7 + 8) = v4;
      *v4 = v7;
      *result = v4;
      v4[1] = result;
      return v4;
    }
  }

  else
  {
    v9 = a3 >> 1;
    v10 = (a3 >> 1) + 1;
    v11 = result;
    do
    {
      v11 = v11[1];
      --v10;
    }

    while (v10 > 1);
    v12 = std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#1}>(result, v11, a3 >> 1);
    result = std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#1}>(v11, a2, a3 - v9);
    v13 = v12[4];
    if (result[4] <= v13)
    {
      v18 = v12[1];
      i = result;
      result = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    else
    {
      for (i = result[1]; i != a2; i = i[1])
      {
        if (i[4] <= v13)
        {
          break;
        }
      }

      v15 = *i;
      v16 = *(*i + 8);
      v17 = *result;
      *(v17 + 8) = v16;
      *v16 = v17;
      v19 = *v12;
      v18 = v12[1];
      *(v19 + 8) = result;
      *result = v19;
      *v12 = v15;
      *(v15 + 8) = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    if (i != a2)
    {
      v20 = i;
      do
      {
        v21 = v18[4];
        if (i[4] <= v21)
        {
          v18 = v18[1];
          if (v18 == v20)
          {
            return result;
          }
        }

        else
        {
          for (j = i[1]; j != a2; j = j[1])
          {
            if (j[4] <= v21)
            {
              break;
            }
          }

          v23 = *j;
          v24 = *(*j + 8);
          v25 = *i;
          *(v25 + 8) = v24;
          *v24 = v25;
          if (v20 == i)
          {
            v20 = j;
          }

          v27 = *v18;
          v26 = v18[1];
          *(v27 + 8) = i;
          *i = v27;
          *v18 = v23;
          *(v23 + 8) = v18;
          v18 = v26;
          i = j;
          if (v26 == v20)
          {
            return result;
          }
        }
      }

      while (i != a2);
    }
  }

  return result;
}

uint64_t *std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#2}>(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return result;
  }

  if (a3 == 2)
  {
    v4 = *a2;
    if (*(*a2 + 40) < result[5])
    {
      v6 = *v4;
      v5 = v4[1];
      *(v6 + 8) = v5;
      *v5 = v6;
      v7 = *result;
      *(v7 + 8) = v4;
      *v4 = v7;
      *result = v4;
      v4[1] = result;
      return v4;
    }
  }

  else
  {
    v9 = a3 >> 1;
    v10 = (a3 >> 1) + 1;
    v11 = result;
    do
    {
      v11 = v11[1];
      --v10;
    }

    while (v10 > 1);
    v12 = std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#2}>(result, v11, a3 >> 1);
    result = std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#2}>(v11, a2, a3 - v9);
    v13 = v12[5];
    if (result[5] >= v13)
    {
      v18 = v12[1];
      i = result;
      result = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    else
    {
      for (i = result[1]; i != a2; i = i[1])
      {
        if (i[5] >= v13)
        {
          break;
        }
      }

      v15 = *i;
      v16 = *(*i + 8);
      v17 = *result;
      *(v17 + 8) = v16;
      *v16 = v17;
      v19 = *v12;
      v18 = v12[1];
      *(v19 + 8) = result;
      *result = v19;
      *v12 = v15;
      *(v15 + 8) = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    if (i != a2)
    {
      v20 = i;
      do
      {
        v21 = v18[5];
        if (i[5] >= v21)
        {
          v18 = v18[1];
          if (v18 == v20)
          {
            return result;
          }
        }

        else
        {
          for (j = i[1]; j != a2; j = j[1])
          {
            if (j[5] >= v21)
            {
              break;
            }
          }

          v23 = *j;
          v24 = *(*j + 8);
          v25 = *i;
          *(v25 + 8) = v24;
          *v24 = v25;
          if (v20 == i)
          {
            v20 = j;
          }

          v27 = *v18;
          v26 = v18[1];
          *(v27 + 8) = i;
          *i = v27;
          *v18 = v23;
          *(v23 + 8) = v18;
          v18 = v26;
          i = j;
          if (v26 == v20)
          {
            return result;
          }
        }
      }

      while (i != a2);
    }
  }

  return result;
}

uint64_t *std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#3}>(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return result;
  }

  if (a3 == 2)
  {
    v4 = *a2;
    if (*(*a2 + 40) > result[5])
    {
      v6 = *v4;
      v5 = v4[1];
      *(v6 + 8) = v5;
      *v5 = v6;
      v7 = *result;
      *(v7 + 8) = v4;
      *v4 = v7;
      *result = v4;
      v4[1] = result;
      return v4;
    }
  }

  else
  {
    v9 = a3 >> 1;
    v10 = (a3 >> 1) + 1;
    v11 = result;
    do
    {
      v11 = v11[1];
      --v10;
    }

    while (v10 > 1);
    v12 = std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#3}>(result, v11, a3 >> 1);
    result = std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#3}>(v11, a2, a3 - v9);
    v13 = v12[5];
    if (result[5] <= v13)
    {
      v18 = v12[1];
      i = result;
      result = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    else
    {
      for (i = result[1]; i != a2; i = i[1])
      {
        if (i[5] <= v13)
        {
          break;
        }
      }

      v15 = *i;
      v16 = *(*i + 8);
      v17 = *result;
      *(v17 + 8) = v16;
      *v16 = v17;
      v19 = *v12;
      v18 = v12[1];
      *(v19 + 8) = result;
      *result = v19;
      *v12 = v15;
      *(v15 + 8) = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    if (i != a2)
    {
      v20 = i;
      do
      {
        v21 = v18[5];
        if (i[5] <= v21)
        {
          v18 = v18[1];
          if (v18 == v20)
          {
            return result;
          }
        }

        else
        {
          for (j = i[1]; j != a2; j = j[1])
          {
            if (j[5] <= v21)
            {
              break;
            }
          }

          v23 = *j;
          v24 = *(*j + 8);
          v25 = *i;
          *(v25 + 8) = v24;
          *v24 = v25;
          if (v20 == i)
          {
            v20 = j;
          }

          v27 = *v18;
          v26 = v18[1];
          *(v27 + 8) = i;
          *i = v27;
          *v18 = v23;
          *(v23 + 8) = v18;
          v18 = v26;
          i = j;
          if (v26 == v20)
          {
            return result;
          }
        }
      }

      while (i != a2);
    }
  }

  return result;
}

uint64_t *std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#5}>(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return result;
  }

  if (a3 == 2)
  {
    v4 = *a2;
    if (*(*a2 + 24) > result[3])
    {
      v6 = *v4;
      v5 = v4[1];
      *(v6 + 8) = v5;
      *v5 = v6;
      v7 = *result;
      *(v7 + 8) = v4;
      *v4 = v7;
      *result = v4;
      v4[1] = result;
      return v4;
    }
  }

  else
  {
    v9 = a3 >> 1;
    v10 = (a3 >> 1) + 1;
    v11 = result;
    do
    {
      v11 = v11[1];
      --v10;
    }

    while (v10 > 1);
    v12 = std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#5}>(result, v11, a3 >> 1);
    result = std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#5}>(v11, a2, a3 - v9);
    v13 = v12[3];
    if (result[3] <= v13)
    {
      v18 = v12[1];
      i = result;
      result = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    else
    {
      for (i = result[1]; i != a2; i = i[1])
      {
        if (i[3] <= v13)
        {
          break;
        }
      }

      v15 = *i;
      v16 = *(*i + 8);
      v17 = *result;
      *(v17 + 8) = v16;
      *v16 = v17;
      v19 = *v12;
      v18 = v12[1];
      *(v19 + 8) = result;
      *result = v19;
      *v12 = v15;
      *(v15 + 8) = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    if (i != a2)
    {
      v20 = i;
      do
      {
        v21 = v18[3];
        if (i[3] <= v21)
        {
          v18 = v18[1];
          if (v18 == v20)
          {
            return result;
          }
        }

        else
        {
          for (j = i[1]; j != a2; j = j[1])
          {
            if (j[3] <= v21)
            {
              break;
            }
          }

          v23 = *j;
          v24 = *(*j + 8);
          v25 = *i;
          *(v25 + 8) = v24;
          *v24 = v25;
          if (v20 == i)
          {
            v20 = j;
          }

          v27 = *v18;
          v26 = v18[1];
          *(v27 + 8) = i;
          *i = v27;
          *v18 = v23;
          *(v23 + 8) = v18;
          v18 = v26;
          i = j;
          if (v26 == v20)
          {
            return result;
          }
        }
      }

      while (i != a2);
    }
  }

  return result;
}

uint64_t p2t::SweepContext::SweepContext(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 104) = a1 + 104;
  *(a1 + 112) = a1 + 104;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (a1 + 128 == a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    std::vector<p2t::Point *>::__assign_with_size[abi:ne200100]<p2t::Point **,p2t::Point **>((a1 + 128), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v4 = *(a1 + 128);
    v3 = *(a1 + 136);
    v7 = 0;
    v8 = 0;
    v6 = 0;
    if (v3 != v4)
    {
      if (((v3 - v4) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }
  }

  p2t::SweepContext::InitEdges(a1, &v6);
  return a1;
}

void sub_2389AA58C(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 136) = v6;
    operator delete(v6);
    std::list<p2t::Triangle *>::~list(v2);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = *v1;
      if (!*v1)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    std::list<p2t::Triangle *>::~list(v2);
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 88) = v7;
  operator delete(v7);
  v8 = *v1;
  if (!*v1)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v1 + 8) = v8;
  operator delete(v8);
  _Unwind_Resume(a1);
}

void p2t::SweepContext::InitEdges(uint64_t a1, void *a2)
{
  if (((a2[1] - *a2) >> 3) >= 1)
  {
    operator new();
  }
}

uint64_t *std::list<p2t::Triangle *>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void p2t::SweepContext::AddHole(uint64_t a1, uint64_t *a2)
{
  memset(v8, 0, sizeof(v8));
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  p2t::SweepContext::InitEdges(a1, v8);
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](a1 + 128, (v5 + 8 * v6));
      v6 = v7;
      v5 = *a2;
      ++v7;
    }

    while (v6 < (a2[1] - *a2) >> 3);
  }
}

void sub_2389AA8E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t p2t::SweepContext::GetTriangles@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 80);
  v2 = *(this + 88);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  return this;
}

uint64_t p2t::SweepContext::GetMap@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  if (*(this + 112) != this + 104)
  {
    operator new();
  }

  return this;
}

void p2t::SweepContext::InitTriangulation(p2t::SweepContext *this)
{
  v1 = *(this + 16);
  v3 = **v1;
  v2 = (*v1)[1];
  v4 = *(this + 17) - v1;
  if (!v4)
  {
    v14 = *(*v1 + 1);
    v15 = **v1;
    goto LABEL_12;
  }

  v5 = v4 >> 3;
  if (v5 >= 2 && (v5 ? (v6 = (v5 - 1) >> 32 == 0) : (v6 = 0), v6))
  {
    v7 = v5 & 0x1FFFFFFFELL;
    v8 = v5 & 0xFFFFFFFE;
    v16 = v1 + 1;
    v17 = v5 & 0x1FFFFFFFELL;
    v18 = **v1;
    v19 = v18;
    v20 = v18;
    v21 = (*v1)[1];
    v22 = v21;
    v23 = v21;
    do
    {
      v24 = *(v16 - 1);
      v25 = v24[1];
      v3 = fmax(*v24, v3);
      v19 = fmin(*v24, v19);
      v26 = **v16;
      v27 = (*v16)[1];
      v18 = fmax(v26, v18);
      v20 = fmin(v26, v20);
      v2 = fmax(v25, v2);
      v21 = fmax(v27, v21);
      v22 = fmin(v25, v22);
      v23 = fmin(v27, v23);
      v16 += 2;
      v17 -= 2;
    }

    while (v17);
    v3 = fmax(v3, v18);
    v9 = fmin(v19, v20);
    v2 = fmax(v2, v21);
    v10 = fmin(v22, v23);
    if (v5 == v7)
    {
LABEL_12:
      operator new();
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = **v1;
    v10 = (*v1)[1];
  }

  v11 = v8 + 1;
  do
  {
    v12 = v1[v7];
    v13 = v12[1];
    v3 = fmax(*v12, v3);
    v9 = fmin(*v12, v9);
    v2 = fmax(v13, v2);
    v10 = fmin(v13, v10);
    v7 = v11++;
  }

  while (v5 > v7);
  goto LABEL_12;
}

BOOL p2t::cmp(p2t *this, const Point *a2, const Point *a3)
{
  v3 = *(this + 1);
  v4 = *&a2[2].v;
  if (v3 < v4)
  {
    return 1;
  }

  return v3 == v4 && *this < *&a2->v;
}

void p2t::SweepContext::RemoveNode(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x23EE6C500);
  }
}

uint64_t p2t::SweepContext::MapTriangleToNodes(uint64_t this, Point **a2)
{
  v3 = this;
  if (!a2[4])
  {
    v4 = *(this + 152);
    v5 = p2t::Triangle::PointCW(a2, a2[1]);
    this = p2t::AdvancingFront::LocatePoint(v4, v5);
    if (this)
    {
      *(this + 8) = a2;
    }
  }

  if (!a2[5])
  {
    v6 = *(v3 + 152);
    v7 = p2t::Triangle::PointCW(a2, a2[2]);
    this = p2t::AdvancingFront::LocatePoint(v6, v7);
    if (this)
    {
      *(this + 8) = a2;
    }
  }

  if (!a2[6])
  {
    v8 = *(v3 + 152);
    v9 = p2t::Triangle::PointCW(a2, a2[3]);
    this = p2t::AdvancingFront::LocatePoint(v8, v9);
    if (this)
    {
      *(this + 8) = a2;
    }
  }

  return this;
}

void *std::list<p2t::Triangle *>::remove(void *result, uint64_t *a2)
{
  v23 = &v23;
  __p = &v23;
  v2 = result[1];
  if (v2 == result)
  {
    return result;
  }

  v3 = *a2;
  if (&v23 == result)
  {
    while (1)
    {
      v17 = v2[1];
      if (v2[2] == v3)
      {
        break;
      }

LABEL_26:
      v2 = v17;
      if (v17 == result)
      {
        return result;
      }
    }

    if (v17 == result)
    {
      v18 = 1;
      if (v2 == v17)
      {
LABEL_35:
        if (!v18)
        {
          v17 = v17[1];
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (v17[2] == v3)
      {
        while (1)
        {
          v17 = v17[1];
          v18 = v17 == result;
          if (v17 == result)
          {
            break;
          }

          if (v17[2] != v3)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
LABEL_32:
        v18 = 0;
      }

      if (v2 == v17)
      {
        goto LABEL_35;
      }
    }

    v19 = *v17;
    v20 = *(*v17 + 8);
    v21 = *v2;
    *(v21 + 8) = v20;
    *v20 = v21;
    v22 = v23;
    v23[1] = v2;
    *v2 = v22;
    v23 = v19;
    v19[1] = &v23;
    goto LABEL_35;
  }

  v4 = 0;
  v5 = &v23;
  do
  {
    v6 = v2[1];
    if (v2[2] == v3)
    {
      while (v6 != result)
      {
        v7 = v6[2] == v3;
        if (v6[2] != v3)
        {
          if (v2 != v6)
          {
            goto LABEL_11;
          }

LABEL_16:
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }

        v6 = v6[1];
      }

      v7 = 1;
      if (v2 == v6)
      {
        goto LABEL_16;
      }

LABEL_11:
      v5 = *v6;
      if (*v6 == v2)
      {
        v10 = 1;
      }

      else
      {
        v8 = -1;
        v9 = v2;
        do
        {
          v9 = v9[1];
          ++v8;
        }

        while (v9 != v5);
        v10 = v8 + 2;
      }

      result[2] -= v10;
      v4 += v10;
      v11 = v5[1];
      v12 = *v2;
      *(v12 + 8) = v11;
      *v11 = v12;
      v13 = v23;
      v23[1] = v2;
      *v2 = v13;
      v23 = v5;
      v5[1] = &v23;
      if (!v7)
      {
LABEL_20:
        v6 = v6[1];
      }
    }

LABEL_4:
    v2 = v6;
  }

  while (v6 != result);
  if (v4)
  {
    result = __p;
    v14 = v5[1];
    v15 = *__p;
    *(v15 + 8) = v14;
    *v14 = v15;
    v25 = 0;
    if (result != &v23)
    {
      do
      {
        v16 = result[1];
        operator delete(result);
        result = v16;
      }

      while (v16 != &v23);
    }
  }

  return result;
}

void sub_2389AB47C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void p2t::SweepContext::~SweepContext(p2t::SweepContext *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      *(v2 + 24) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EE6C500](v2, 0x1080C40B69A5871);
  }

  v4 = *(this + 21);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      *(v4 + 24) = v5;
      operator delete(v5);
    }

    MEMORY[0x23EE6C500](v4, 0x1080C40B69A5871);
  }

  v6 = *(this + 19);
  if (v6)
  {
    OpenSteer::SimpleVehicle::~SimpleVehicle(v6);
    MEMORY[0x23EE6C500]();
  }

  v7 = *(this + 22);
  if (v7)
  {
    MEMORY[0x23EE6C500](v7, 0x1020C40DBF2485DLL);
  }

  v8 = *(this + 23);
  if (v8)
  {
    MEMORY[0x23EE6C500](v8, 0x1020C40DBF2485DLL);
  }

  v9 = *(this + 24);
  if (v9)
  {
    MEMORY[0x23EE6C500](v9, 0x1020C40DBF2485DLL);
  }

  v10 = this + 104;
  v11 = *(this + 14);
  if (v11 != this + 104)
  {
    do
    {
      v12 = *(v11 + 2);
      if (v12)
      {
        MEMORY[0x23EE6C500](v12, 0x1020C403BE5E226);
      }

      v11 = *(v11 + 1);
    }

    while (v11 != v10);
  }

  v14 = *this;
  v13 = *(this + 1);
  if (v13 != *this)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = *(v14 + 8 * v15);
      if (v17)
      {
        MEMORY[0x23EE6C500](v17, 0x20C40A4A59CD2);
        v14 = *this;
        v13 = *(this + 1);
      }

      v15 = v16++;
    }

    while (v15 < (v13 - v14) >> 3);
  }

  v18 = *(this + 16);
  if (v18)
  {
    *(this + 17) = v18;
    operator delete(v18);
  }

  if (*(this + 15))
  {
    v19 = *(this + 14);
    v20 = *(*(this + 13) + 8);
    v21 = *v19;
    *(v21 + 8) = v20;
    *v20 = v21;
    *(this + 15) = 0;
    if (v19 != v10)
    {
      do
      {
        v22 = *(v19 + 1);
        operator delete(v19);
        v19 = v22;
      }

      while (v22 != v10);
    }
  }

  v23 = *(this + 10);
  if (v23)
  {
    *(this + 11) = v23;
    operator delete(v23);
  }

  v24 = *this;
  if (*this)
  {
    *(this + 1) = v24;
    operator delete(v24);
  }
}

void *std::__list_imp<p2t::Triangle *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

char *std::vector<p2t::Point *>::__assign_with_size[abi:ne200100]<p2t::Point **,p2t::Point **>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,false>(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*a3)(*v9, v10->i64[0]);
        if (result)
        {
          v78 = v10->i64[0];
          v10->i64[0] = *v9;
LABEL_106:
          *v9 = v78;
          return result;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,0>(v10, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(*v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v74 = v10->i64[1];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v73;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v76 = v10->i64[1];
      v75 = v10[1].i64[0];
      v77 = v10->i64[0];
      v10->i64[1] = v75;
      v10[1].i64[0] = v76;
      result = (*a3)(v75, v77);
      goto LABEL_136;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = &v10->u64[1];
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v88 = *v85;
            v87 = v85[1];
            v85 = v81;
            result = (*a3)(v87, v88);
            if (result)
            {
              v89 = *v85;
              v90 = v84;
              v86 = v85;
              while (1)
              {
                *v86 = *(v86 - 1);
                if (!v90)
                {
                  break;
                }

                result = (*a3)(v89, *(v86 - 2));
                --v86;
                v90 += 8;
                if ((result & 1) == 0)
                {
                  goto LABEL_123;
                }
              }

              v86 = v10;
LABEL_123:
              *v86 = v89;
            }

            v81 = (v85 + 1);
            v84 -= 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v93 = v8->i64[0];
          v92 = v8->i64[1];
          v8 = v81;
          result = (*a3)(v92, v93);
          if (result)
          {
            v94 = v8->i64[0];
            v95 = v8;
            do
            {
              v96 = v95;
              v97 = *--v95;
              *v96 = v97;
              result = (*a3)(v94, *(v96 - 2));
            }

            while ((result & 1) != 0);
            *v95 = v94;
          }

          v81 = &v8->u64[1];
        }

        while (&v8->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,p2t::Point**>(v10, a2, a2, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v10->i64[0], v10->i64[v12]);
      v18 = (*a3)(*v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (!v18)
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if ((*a3)(*v9))
          {
            v32 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v32;
          }

LABEL_37:
          --a4;
          v20 = v10->i64[0];
          if (a5)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v10->i64[v12] = *v9;
        *v9 = v19;
        --a4;
        v20 = v10->i64[0];
        if (a5)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_37;
        }

        v23 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v23;
        if (!(*a3)(v10->i64[0], v10->i64[v12]))
        {
          goto LABEL_37;
        }

        v24 = v10->i64[v12];
        v10->i64[v12] = v10->i64[0];
        v10->i64[0] = v24;
        --a4;
        v20 = v24;
        if (a5)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      v49 = (*a3)(v8[-1].i64[1], v20);
      v20 = v8->i64[0];
      if (v49)
      {
        goto LABEL_60;
      }

      result = (*a3)(v8->i64[0], *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v20, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = &v8->u64[1];
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = (*a3)(v20, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v20, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v20, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v20, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        v8->i64[0] = *v71;
      }

      a5 = 0;
      *v71 = v20;
    }

    else
    {
      v14 = (v13)(v10->i64[v12], v10->i64[0]);
      v15 = (*a3)(*v9, v10->i64[v12]);
      if (v14)
      {
        v16 = v10->i64[0];
        if (v15)
        {
          v10->i64[0] = *v9;
          *v9 = v16;
        }

        else
        {
          v10->i64[0] = v10->i64[v12];
          v10->i64[v12] = v16;
          if ((*a3)(*v9))
          {
            v25 = v10->i64[v12];
            v10->i64[v12] = *v9;
            *v9 = v25;
          }
        }
      }

      else if (v15)
      {
        v21 = v10->i64[v12];
        v10->i64[v12] = *v9;
        *v9 = v21;
        if ((*a3)(v10->i64[v12], v10->i64[0]))
        {
          v22 = v10->i64[0];
          v10->i64[0] = v10->i64[v12];
          v10->i64[v12] = v22;
        }
      }

      v26 = &v10->i8[8 * v12];
      v27 = (*a3)(*(v26 - 1), v8->i64[1]);
      v28 = (*a3)(a2[-1].i64[0], *(v26 - 1));
      if (v27)
      {
        v29 = v8->i64[1];
        if (v28)
        {
          v8->i64[1] = a2[-1].i64[0];
          a2[-1].i64[0] = v29;
        }

        else
        {
          v8->i64[1] = *(v26 - 1);
          *(v26 - 1) = v29;
          if ((*a3)(a2[-1].i64[0]))
          {
            v33 = *(v26 - 1);
            *(v26 - 1) = a2[-1].i64[0];
            a2[-1].i64[0] = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = *(v26 - 1);
        *(v26 - 1) = a2[-1].i64[0];
        a2[-1].i64[0] = v30;
        if ((*a3)(*(v26 - 1), v8->i64[1]))
        {
          v31 = v8->i64[1];
          v8->i64[1] = *(v26 - 1);
          *(v26 - 1) = v31;
        }
      }

      v34 = (*a3)(*(v26 + 1), v8[1].i64[0]);
      v35 = (*a3)(a2[-2].i64[1], *(v26 + 1));
      if (v34)
      {
        v36 = v8[1].i64[0];
        if (v35)
        {
          v8[1].i64[0] = a2[-2].i64[1];
          a2[-2].i64[1] = v36;
        }

        else
        {
          v8[1].i64[0] = *(v26 + 1);
          *(v26 + 1) = v36;
          if ((*a3)(a2[-2].i64[1]))
          {
            v39 = *(v26 + 1);
            *(v26 + 1) = a2[-2].i64[1];
            a2[-2].i64[1] = v39;
          }
        }
      }

      else if (v35)
      {
        v37 = *(v26 + 1);
        *(v26 + 1) = a2[-2].i64[1];
        a2[-2].i64[1] = v37;
        if ((*a3)(*(v26 + 1), v8[1].i64[0]))
        {
          v38 = v8[1].i64[0];
          v8[1].i64[0] = *(v26 + 1);
          *(v26 + 1) = v38;
        }
      }

      v40 = (*a3)(v8->i64[v12], *(v26 - 1));
      v41 = (*a3)(*(v26 + 1), v8->i64[v12]);
      if (v40)
      {
        v42 = *(v26 - 1);
        if (v41)
        {
          *(v26 - 1) = *(v26 + 1);
          *(v26 + 1) = v42;
          v43 = v8->i64[v12];
          goto LABEL_58;
        }

        *(v26 - 1) = v8->i64[v12];
        v8->i64[v12] = v42;
        v47 = (*a3)(*(v26 + 1));
        v43 = v8->i64[v12];
        if (v47)
        {
          v46 = *(v26 + 1);
          v8->i64[v12] = v46;
          *(v26 + 1) = v43;
          goto LABEL_57;
        }
      }

      else
      {
        v43 = v8->i64[v12];
        if (v41)
        {
          v8->i64[v12] = *(v26 + 1);
          *(v26 + 1) = v43;
          v44 = *(v26 - 1);
          v45 = (*a3)();
          v43 = v8->i64[v12];
          if (v45)
          {
            v46 = *(v26 - 1);
            *(v26 - 1) = v43;
            v8->i64[v12] = v46;
LABEL_57:
            v43 = v46;
          }
        }
      }

LABEL_58:
      v48 = v8->i64[0];
      v8->i64[0] = v43;
      v8->i64[v12] = v48;
      --a4;
      v20 = v8->i64[0];
      if ((a5 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_60:
      v50 = v8;
      do
      {
        v51 = v50;
        v52 = v50->i64[1];
        v50 = (v50 + 8);
      }

      while (((*a3)(v52, v20) & 1) != 0);
      v53 = a2;
      if (v51 == v8)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (((*a3)(v55, v20) & 1) == 0);
      }

      else
      {
        do
        {
          v54 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (!(*a3)(v54, v20));
      }

      v99 = a4;
      v56 = v9;
      v57 = a2;
      if (v50 < v53)
      {
        v58 = v50;
        v59 = v53;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = *v59;
          *v59 = v60;
          do
          {
            v51 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while (((*a3)(v61, v20) & 1) != 0);
          do
          {
            v62 = *--v59;
          }

          while (!(*a3)(v62, v20));
        }

        while (v58 < v59);
      }

      if (v51 != v8)
      {
        v8->i64[0] = v51->i64[0];
      }

      v51->i64[0] = v20;
      a2 = v57;
      v9 = v56;
      a4 = v99;
      if (v50 < v53)
      {
        goto LABEL_79;
      }

      v63 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**>(v8, v51, a3);
      v10 = &v51->u64[1];
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**>(&v51->i64[1], a2, a3);
      if (result)
      {
        a2 = v51;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,false>(v8, v51, a3, v99, a5 & 1);
        a5 = 0;
        v10 = &v51->u64[1];
      }
    }
  }

  v79 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(*v9, v10->i64[1]);
  if ((v79 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v91 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v91;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_136:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v80;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v80;
    result = (*a3)(*v9);
    if (result)
    {
      v78 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_106;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (*a3)(a1[1], *a1);
        v16 = (*a3)(*(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v17;
            if ((*a3)(*(a2 - 1)))
            {
              v25 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v25;
            }
          }

          return 1;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v12 = a1[1];
        v11 = a1[2];
        v13 = *a1;
        a1[1] = v11;
        a1[2] = v12;
        v14 = (*a3)(v11, v13);
        break;
      default:
        goto LABEL_16;
    }

    if (v14)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_16:
  v18 = (*a3)(a1[1], *a1);
  v19 = a1 + 2;
  v20 = (*a3)(a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v26 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v26))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (!(*a3)(*v27, *v19))
  {
LABEL_40:
    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }

  v30 = *v27;
  v31 = v28;
  do
  {
    v32 = a1 + v31;
    *(a1 + v31 + 24) = *(a1 + v31 + 16);
    if (v31 == -16)
    {
      *a1 = v30;
      if (++v29 != 8)
      {
        goto LABEL_40;
      }

      return v27 + 1 == a2;
    }

    v31 -= 8;
  }

  while (((*a3)(v30, *(v32 + 1)) & 1) != 0);
  *(a1 + v31 + 24) = v30;
  if (++v29 != 8)
  {
    goto LABEL_40;
  }

  return v27 + 1 == a2;
}

void *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,p2t::Point**>(void *a1, void *a2, void *a3, unsigned int (**a4)(void, uint64_t))
{
  v4 = a3;
  if (a1 == a2)
  {
    return v4;
  }

  v51 = a2;
  v49 = a2 - a1;
  v6 = a2 - a1;
  if (v6 >= 2)
  {
    v7 = (v6 - 2) >> 1;
    v53 = a1 + 1;
    v8 = v7;
    do
    {
      if (v7 >= v8)
      {
        v10 = (2 * (v8 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v11 = &v53[2 * v8];
        if (2 * (v8 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v6 && (*a4)(*v11, v11[1]))
        {
          ++v11;
          v10 = 2 * (v8 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v12 = &a1[v8];
        if (((*a4)(*v11, *v12) & 1) == 0)
        {
          v13 = *v12;
          do
          {
            v14 = v11;
            *v12 = *v11;
            if (v7 < v10)
            {
              break;
            }

            v15 = (2 * v10) | 1;
            v11 = &v53[2 * v10];
            v16 = 2 * v10 + 2;
            if (v16 < v6 && (*a4)(*v11, v11[1]))
            {
              ++v11;
              v15 = v16;
            }

            v12 = v14;
            v10 = v15;
          }

          while (!(*a4)(*v11, v13));
          *v14 = v13;
          v4 = a3;
        }
      }

      v9 = v8-- <= 0;
    }

    while (!v9);
  }

  v17 = a1;
  i = v51;
  if (v51 != v4)
  {
    if (v6 < 2)
    {
      i = v51;
      do
      {
        if ((*a4)(*i, *a1))
        {
          v19 = *i;
          *i = *a1;
          *a1 = v19;
        }

        ++i;
      }

      while (i != v4);
      goto LABEL_45;
    }

    v20 = a1 + 1;
    for (i = v51; i != v4; ++i)
    {
      if ((*a4)(*i, *v17))
      {
        v21 = *i;
        *i = *a1;
        *a1 = v21;
        if (v49 == 16)
        {
          v22 = a1 + 1;
          v23 = 1;
          if (((*a4)(*v20) & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v24 = (*a4)(a1[1], a1[2]);
          if (v24)
          {
            v22 = a1 + 2;
          }

          else
          {
            v22 = a1 + 1;
          }

          if (v24)
          {
            v23 = 2;
          }

          else
          {
            v23 = 1;
          }

          if (((*a4)(*v22, *a1) & 1) == 0)
          {
LABEL_38:
            v54 = i;
            v25 = a1;
            v26 = *a1;
            do
            {
              v28 = v22;
              *v25 = *v22;
              if (((v6 - 2) >> 1) < v23)
              {
                break;
              }

              v29 = (2 * v23) | 1;
              v22 = &v20[2 * v23];
              v30 = 2 * v23 + 2;
              if (v30 < v6 && (*a4)(*v22, v22[1]))
              {
                ++v22;
                v29 = v30;
              }

              v27 = (*a4)(*v22, v26);
              v25 = v28;
              v23 = v29;
            }

            while (!v27);
            *v28 = v26;
            v4 = a3;
            i = v54;
          }
        }
      }

      v17 = a1;
    }
  }

LABEL_45:
  if (v6 >= 2)
  {
    do
    {
      v32 = 0;
      v33 = *v17;
      v34 = (v6 - 2) >> 1;
      v35 = v17;
      do
      {
        while (1)
        {
          v39 = &v35[v32];
          v38 = v39 + 1;
          v40 = (2 * v32) | 1;
          v41 = 2 * v32 + 2;
          if (v41 < v6)
          {
            break;
          }

          v32 = (2 * v32) | 1;
          *v35 = *v38;
          v35 = v39 + 1;
          if (v40 > v34)
          {
            goto LABEL_57;
          }
        }

        v37 = v39[2];
        v36 = v39 + 2;
        if ((*a4)(*(v36 - 1), v37))
        {
          v38 = v36;
          v32 = v41;
        }

        else
        {
          v32 = v40;
        }

        *v35 = *v38;
        v35 = v38;
      }

      while (v32 <= v34);
LABEL_57:
      v42 = v51 - 1;
      if (v38 == v51 - 1)
      {
        *v38 = v33;
        v17 = a1;
      }

      else
      {
        *v38 = *v42;
        *v42 = v33;
        v17 = a1;
        v43 = (v38 - a1 + 8) >> 3;
        v9 = v43 < 2;
        v44 = v43 - 2;
        if (!v9)
        {
          v45 = v44 >> 1;
          v46 = &a1[v44 >> 1];
          if ((*a4)(*v46, *v38))
          {
            v47 = *v38;
            do
            {
              v48 = v46;
              *v38 = *v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[v45];
              v38 = v48;
            }

            while (((*a4)(*v46, v47) & 1) != 0);
            *v48 = v47;
          }
        }
      }

      --v51;
      v9 = v6-- <= 2;
    }

    while (!v9);
  }

  return i;
}

float OpenSteer::RandomVectorInUnitRadiusSphere(OpenSteer *this)
{
  do
  {
    v1 = vcvts_n_f32_s32(rand(), 0x1EuLL) + -1.0;
    v2 = vcvts_n_f32_s32(rand(), 0x1EuLL) + -1.0;
    v3 = vcvts_n_f32_s32(rand(), 0x1EuLL) + -1.0;
  }

  while (sqrtf(((v1 * v1) + (v2 * v2)) + (v3 * v3)) >= 1.0);
  return v1;
}

float OpenSteer::randomVectorOnUnitRadiusXZDisk(OpenSteer *this)
{
  do
  {
    v1 = vcvts_n_f32_s32(rand(), 0x1EuLL) + -1.0;
    v2 = vcvts_n_f32_s32(rand(), 0x1EuLL) + -1.0;
  }

  while (sqrtf((v1 * v1) + (v2 * v2)) >= 1.0);
  return v1;
}

float32x2_t OpenSteer::vecLimitDeviationAngleUtility(OpenSteer *this, float32x2_t *a2, const Vec3 *a3, float a4, const Vec3 *a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  result = *a2;
  v13 = a2[1].f32[0];
  v14 = sqrtf(vaddv_f32(vmul_f32(result, result)) + (v13 * v13));
  if (v14 != 0.0)
  {
    v15 = *&a3->x;
    z = a3->z;
    *&a11 = vaddv_f32(vmul_f32(*&a3->x, result)) + (z * v13);
    if (this)
    {
      if ((*&a11 / v14) >= a4)
      {
        return result;
      }
    }

    else if ((*&a11 / v14) <= a4)
    {
      return result;
    }

    v17 = vmls_lane_f32(result, v15, *&a11, 0);
    v18 = v13 - (*&a11 * z);
    v19 = vmul_f32(v17, v17);
    v19.f32[0] = sqrtf(vaddv_f32(v19) + (v18 * v18));
    if (v19.f32[0] > 0.0)
    {
      v17 = vdiv_f32(v17, vdup_lane_s32(v19, 0));
    }

    return vmul_n_f32(vmla_n_f32(vmul_n_f32(v15, a4), v17, sqrtf(1.0 - (a4 * a4))), v14);
  }

  return result;
}

float OpenSteer::findPerpendicularIn3d(OpenSteer *this, const Vec3 *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (*this <= v3 && v2 <= v4)
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    if (v3 > v2 || v3 > v4)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    if (v3 > v2 || v3 > v4)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return -((v6 * v4) - (v7 * v3));
}

void sub_2389ACEAC(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v2, 0x1080C4018622206);

  _Unwind_Resume(a1);
}

void sub_2389ACED4(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

uint64_t GKCMonteCarloStrategist::treePolicy(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  for (i = a4; [i count]; i = v25)
  {
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    if ([i count] > ((v9 - v10) >> 3))
    {
      GKCMonteCarloStrategist::expand(a1, a2, i);
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24) - v11;
    if (v12)
    {
      v13 = v12 >> 3;
      v14 = *(a2 + 56);
      v15 = *(a1 + 24);
      if (v13 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v13;
      }

      v17 = 0.0;
      do
      {
        v19 = *v11++;
        v18 = v19;
        v20 = *(v19 + 56);
        v21 = *(v19 + 64) / v20;
        v22 = log((v14 / v20));
        v23 = v21 + sqrt(v22 + v22) * v15;
        if (v23 >= v17)
        {
          a2 = v18;
        }

        v17 = fmax(v23, v17);
        --v16;
      }

      while (v16);
    }

    v24 = [*a2 activePlayer];

    v25 = [*a2 gameModelUpdatesForPlayer:v24];

    v7 = v24;
  }

  return a2;
}

uint64_t GKCMonteCarloStrategist::defaultPolicy(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activePlayer];
  v5 = [v3 gameModelUpdatesForPlayer:v4];

  while ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(a1[1], "nextIntWithUpperBound:", objc_msgSend(v5, "count"))}];
    [v3 applyGameModelUpdate:v6];
    v7 = [v3 activePlayer];
    v8 = [v3 gameModelUpdatesForPlayer:v7];

    v5 = v8;
  }

  v9 = [*a1 activePlayer];
  v10 = [v3 isWinForPlayer:v9];

  return v10;
}

uint64_t GKCMonteCarloStrategist::deleteChildren(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    if (v3 != v4)
    {
      v5 = result;
      do
      {
        if (*v3)
        {
          result = GKCMonteCarloStrategist::deleteChildren(v5);
          v6 = *v3;
          if (*v3)
          {
            v7 = *v6;
            *v6 = 0;

            v8 = *(v6 + 8);
            *(v6 + 8) = 0;

            *(v6 + 40) = 0;
            v9 = *(v6 + 16);
            if (v9)
            {
              *(v6 + 24) = v9;
              operator delete(v9);
            }

            result = MEMORY[0x23EE6C500](v6, 0x10A0C40AF943C6FLL);
          }
        }

        ++v3;
      }

      while (v3 != v4);
      v3 = *(a2 + 16);
    }

    *(a2 + 24) = v3;
  }

  return result;
}

void GKCMonteCarloStrategist::expand(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 objectAtIndexedSubscript:*(a2 + 48)];
  objc_claimAutoreleasedReturnValue();
  ++*(a2 + 48);
  operator new();
}

void sub_2389AD8E0(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v3, 0x10A0C40AF943C6FLL);

  _Unwind_Resume(a1);
}

void GKTriangleGraphNodes::GKTriangleGraphNodes(GKTriangleGraphNodes *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

void GKCMeshGraph::GKCMeshGraph(GKCMeshGraph *this)
{
  GKCGraph::GKCGraph(this);
  *v2 = &unk_284B50038;
  ClipperLib::Clipper::Clipper((v2 + 5), 0);
  *(this + 360) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 43) = 0;
  *(this + 44) = this + 360;
  *(this + 456) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 55) = 0;
  *(this + 56) = this + 456;
  *(this + 59) = this + 480;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 30) = 0u;
  *(this + 132) = 1065353216;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 142) = 1065353216;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 152) = 1065353216;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 162) = 1065353216;
  *(this + 328) = 1;
  *(this + 658) = 0;
  *(this + 83) = 0;
  *(this + 680) = 0u;
}

{
  GKCGraph::GKCGraph(this);
  *v2 = &unk_284B50038;
  ClipperLib::Clipper::Clipper((v2 + 5), 0);
  *(this + 360) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 43) = 0;
  *(this + 44) = this + 360;
  *(this + 456) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 55) = 0;
  *(this + 56) = this + 456;
  *(this + 59) = this + 480;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 30) = 0u;
  *(this + 132) = 1065353216;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 142) = 1065353216;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 152) = 1065353216;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 162) = 1065353216;
  *(this + 328) = 1;
  *(this + 658) = 0;
  *(this + 83) = 0;
  *(this + 680) = 0u;
}

void GKCMeshGraph::~GKCMeshGraph(id *this)
{
  *this = &unk_284B50038;
  objc_destroyWeak(this + 83);
  v2 = this[79];
  if (v2)
  {
    do
    {
      v24 = *v2;
      v25 = v2[3];
      if (v25)
      {
        v2[4] = v25;
        operator delete(v25);
      }

      operator delete(v2);
      v2 = v24;
    }

    while (v24);
  }

  v3 = this[77];
  this[77] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = this[74];
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = this[72];
  this[72] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = this[69];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = this[67];
  this[67] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = this[64];
  if (v10)
  {
    do
    {
      v11 = *v10;
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = this[62];
  this[62] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy((this + 59), this[60]);
  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy((this + 56), this[57]);
  v13 = this[53];
  if (v13)
  {
    v14 = this[54];
    v15 = this[53];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 8;
      }

      while (v14 != v13);
      v15 = this[53];
    }

    this[54] = v13;
    operator delete(v15);
  }

  v17 = this[50];
  if (v17)
  {
    this[51] = v17;
    operator delete(v17);
  }

  v18 = this[47];
  if (v18)
  {
    this[48] = v18;
    operator delete(v18);
  }

  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy((this + 44), this[45]);
  v19 = this[40];
  if (v19)
  {
    this[41] = v19;
    operator delete(v19);
  }

  v20 = this[37];
  if (v20)
  {
    v21 = this[38];
    v22 = this[37];
    if (v21 != v20)
    {
      v23 = this[38];
      do
      {
        v27 = *(v23 - 3);
        v23 -= 24;
        v26 = v27;
        if (v27)
        {
          *(v21 - 2) = v26;
          operator delete(v26);
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = this[37];
    }

    this[38] = v20;
    operator delete(v22);
  }

  ClipperLib::Clipper::~Clipper((this + 5));

  GKCGraph::~GKCGraph(this);
}

{
  GKCMeshGraph::~GKCMeshGraph(this);

  JUMPOUT(0x23EE6C500);
}

void GKCMeshGraph::AddObstacle(GKCMeshGraph *this, id *a2)
{
  v24 = 0;
  v25 = a2;
  v3 = *(this + 168);
  if (v3 == 0.0)
  {
    v4 = a2[8];
    v24 = v4;
  }

  else
  {
    v5 = GKCPolygonObstacle::extrudeObstacle(a2, a2, v3);
    v6 = v24;
    v24 = v5;
    v7 = v5;

    v4 = v7;
  }

  v8 = [v4 cPolygonObstacle];
  v9 = [v24 cPolygonObstacle];
  v10 = *(this + 57);
  if (!v10)
  {
LABEL_10:
    operator new();
  }

  v11 = v25;
  while (1)
  {
    while (1)
    {
      v12 = v10;
      v13 = v10[4];
      if (v25 >= v13)
      {
        break;
      }

      v10 = *v12;
      if (!*v12)
      {
        goto LABEL_10;
      }
    }

    if (v13 >= v25)
    {
      break;
    }

    v10 = v12[1];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v12[5] = v9;
  v14 = [v24 cPolygonObstacle];
  v15 = *(this + 60);
  if (!v15)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v16 = v15;
      v17 = v15[4];
      if (v14 >= v17)
      {
        break;
      }

      v15 = *v16;
      if (!*v16)
      {
        goto LABEL_17;
      }
    }

    if (v17 >= v14)
    {
      break;
    }

    v15 = v16[1];
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  v16[5] = v11;
  v19 = *(this + 54);
  if (v19 < *(this + 55))
  {
    *v19 = v24;
    v18 = (v19 + 1);
  }

  else
  {
    v18 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(this + 53, &v24);
  }

  *(this + 54) = v18;
  std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](this + 376, &v25);
  __p = [v24 cPolygonObstacle];
  std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](this + 400, &__p);
  v22 = 0;
  v23 = 0;
  __p = 0;
  if (*(v8 + 16) != *(v8 + 8))
  {
    v20 = vcvtq_s64_f64(vmulq_f64(vcvtq_f64_f32(**(v8 + 8)), vdupq_n_s64(0x40C3880000000000uLL)));
    operator new();
  }

  ClipperLib::ClipperBase::AddPath(this + *(*(this + 5) - 24) + 40, &__p, 0, 1);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_2389AE128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GKCMeshGraph::RemoveObstacle(GKCMeshGraph *this, GKCPolygonObstacle *a2)
{
  v4 = (this + 456);
  v5 = *(this + 57);
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = v5[4];
      if (v7 <= a2)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v8 = v6[5];
  v42 = 0;
  v43 = 0;
  __p = 0;
  v9 = v8[2] - v8[1];
  if ((v9 >> 3) >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = ((v9 >> 3) & 0x7FFFFFFF) - 1;
    v13 = vdupq_n_s64(0x40C3880000000000uLL);
    v40 = v13;
    do
    {
      v14 = vcvtq_s64_f64(vmulq_f64(vcvtq_f64_f32(*(v8[1] + 8 * v12)), v13));
      v15 = v11 - v10;
      v16 = (v11->i64 - v10) >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
      }

      if (-v10 >> 3 > v17)
      {
        v17 = -v10 >> 3;
      }

      if (-v10 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v19 = (v11->i64 - v10) >> 4;
      v20 = (16 * v16);
      v21 = (16 * v16 - 16 * v19);
      *v20 = v14;
      v11 = v20 + 1;
      memcpy(v21, v10, v15);
      __p = v21;
      v43 = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v10 = v21;
      v13 = v40;
      v42 = v11;
      v22 = v12-- + 1;
    }

    while (v22 > 1);
  }

  ClipperLib::ClipperBase::AddPath(this + *(*(this + 5) - 24) + 40, &__p, 0, 1);
  v23 = *v4;
  if (!*v4)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v24 = v23;
      v25 = v23[4];
      if (v25 <= a2)
      {
        break;
      }

      v23 = *v24;
      if (!*v24)
      {
        goto LABEL_28;
      }
    }

    if (v25 >= a2)
    {
      break;
    }

    v23 = v24[1];
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  v24[5] = 0;
  v26 = *(this + 60);
  if (!v26)
  {
LABEL_35:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v27 = v26;
      v28 = v26[4];
      if (v8 >= v28)
      {
        break;
      }

      v26 = *v27;
      if (!*v27)
      {
        goto LABEL_35;
      }
    }

    if (v28 >= v8)
    {
      break;
    }

    v26 = v27[1];
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  v27[5] = 0;
  v30 = *(this + 47);
  v29 = *(this + 48);
  if (v30 != v29)
  {
    while (*v30 != a2)
    {
      if (++v30 == v29)
      {
        v30 = *(this + 48);
        break;
      }
    }
  }

  v31 = v29 - (v30 + 1);
  if (v29 != v30 + 1)
  {
    memmove(v30, v30 + 1, v29 - (v30 + 1));
  }

  *(this + 48) = v30 + v31;
  v33 = *(this + 50);
  v32 = *(this + 51);
  if (v33 != v32)
  {
    while (*v33 != v8)
    {
      if (++v33 == v32)
      {
        v33 = *(this + 51);
        break;
      }
    }
  }

  v34 = v32 - (v33 + 1);
  if (v32 != (v33 + 1))
  {
    memmove(v33, v33 + 1, v32 - (v33 + 1));
  }

  *(this + 51) = v33 + v34;
  v36 = *(this + 53);
  v35 = *(this + 54);
  if (v36 != v35)
  {
    while (*v36 != v8[8])
    {
      if (++v36 == v35)
      {
        v36 = *(this + 54);
        break;
      }
    }
  }

  v37 = v36 + 1;
  if (v36 + 1 != v35)
  {
    do
    {
      v36 = v37;
      v38 = *(v37 - 1);
      *(v37 - 1) = *v37;
      *v37 = 0;

      v37 = v36 + 1;
    }

    while (v36 + 1 != v35);
    v35 = *(this + 54);
  }

  while (v35 != v36)
  {
    v39 = *--v35;
  }

  *(this + 54) = v36;
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

void sub_2389AE664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GKCMeshGraph::Triangulate(GKCMeshGraph *this)
{
  v2 = *(this + 2) - *(this + 1);
  if ((v2 >> 3) >= 1)
  {
    v3 = ((v2 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      (*(*this + 16))(this, *(*(this + 1) + 8 * v3));
      v4 = v3-- + 1;
    }

    while (v4 > 1);
  }

  v5 = *(this + 43);
  if (v5)
  {
    p2t::CDT::~CDT(v5);
    MEMORY[0x23EE6C500]();
  }

  for (i = *(this + 79); i; i = *i)
  {
    v18 = i[3];
    v19 = i[4] - v18;
    if ((v19 >> 3) >= 1)
    {
      v20 = ((v19 >> 3) & 0x7FFFFFFF) - 1;
      do
      {
        v22 = *(v18 + 8 * v20);
        if (v22)
        {
          MEMORY[0x23EE6C500](v22, 0x20C40A4A59CD2);
          v18 = i[3];
        }

        *(v18 + 8 * v20) = 0;
        v21 = v20-- + 1;
      }

      while (v21 > 1);
    }
  }

  if (*(this + 65))
  {
    v7 = *(this + 64);
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    *(this + 64) = 0;
    v9 = *(this + 63);
    if (v9)
    {
      bzero(*(this + 62), 8 * v9);
    }

    *(this + 65) = 0;
  }

  if (*(this + 70))
  {
    v10 = *(this + 69);
    if (v10)
    {
      do
      {
        v11 = *v10;
        operator delete(v10);
        v10 = v11;
      }

      while (v11);
    }

    *(this + 69) = 0;
    v12 = *(this + 68);
    if (v12)
    {
      bzero(*(this + 67), 8 * v12);
    }

    *(this + 70) = 0;
  }

  if (*(this + 75))
  {
    v13 = *(this + 74);
    if (v13)
    {
      do
      {
        v14 = *v13;
        operator delete(v13);
        v13 = v14;
      }

      while (v14);
    }

    *(this + 74) = 0;
    v15 = *(this + 73);
    if (v15)
    {
      bzero(*(this + 72), 8 * v15);
    }

    *(this + 75) = 0;
  }

  if (*(this + 80))
  {
    v16 = *(this + 79);
    if (v16)
    {
      do
      {
        v23 = *v16;
        v24 = v16[3];
        if (v24)
        {
          v16[4] = v24;
          operator delete(v24);
        }

        operator delete(v16);
        v16 = v23;
      }

      while (v23);
    }

    *(this + 79) = 0;
    v17 = *(this + 78);
    if (v17)
    {
      bzero(*(this + 77), 8 * v17);
    }

    *(this + 80) = 0;
  }

  operator new();
}

void sub_2389AED5C(_Unwind_Exception *a1)
{
  v6 = *(v4 - 104);
  if (v6)
  {
    *(v4 - 96) = v6;
    operator delete(v6);
  }

  MEMORY[0x23EE6C500](v3, v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2389AEDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::~vector[abi:ne200100](&a21);
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_2389AEE28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2389AEE5CLL);
}

void GKCMeshGraph::BuildGraphFromTriangles(GKCMeshGraph *this)
{
  v2 = this + 360;
  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(this + 352, *(this + 45));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = v2;
  p2t::CDT::GetTriangles(*(this + 43), &v107);
  *__p = 0u;
  *v105 = 0u;
  v106 = 1065353216;
  v3 = v107;
  if (v107 != v108)
  {
    v4 = vdup_n_s32(0x3EAAAAABu);
    while (1)
    {
      v5 = 0;
      v99 = v3;
      v103 = *v3;
      v6 = 2;
      do
      {
        v7 = v103 + 8 * v5;
        v8 = *(v7 + 1);
        v102 = v8;
        if (v5 == 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = v5 + 1;
        }

        v101 = *(v103 + v9 + 1);
        v100 = *&v7[-24 * (v6 / 3) + 24];
        if (v8 < v101)
        {
          v109 = &v102;
          v10 = std::__hash_table<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(__p, &v102);
          v109 = &v101;
          if ((std::__hash_table<std::__hash_value_type<p2t::Point *,BOOL>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,BOOL>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,BOOL>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,BOOL>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(v10 + 3, &v101)[3] & 1) == 0)
          {
            v109 = &v102;
            std::__hash_table<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 77, &v102);
            operator new();
          }
        }

        if (v102 < v100)
        {
          v109 = &v102;
          v11 = std::__hash_table<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(__p, &v102);
          v109 = &v100;
          if ((std::__hash_table<std::__hash_value_type<p2t::Point *,BOOL>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,BOOL>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,BOOL>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,BOOL>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(v11 + 3, &v100)[3] & 1) == 0)
          {
            v109 = &v102;
            std::__hash_table<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 77, &v102);
            operator new();
          }
        }

        ++v5;
        ++v6;
      }

      while (v5 != 3);
      if (*(this + 656) == 1)
      {
        v102 = *(v103 + 1);
        v109 = &v102;
        if (!std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102)[3])
        {
          WeakRetained = objc_loadWeakRetained(this + 83);
          v13 = objc_alloc([WeakRetained nodeClass]);
          *&v14 = *&v102->v;
          v15 = *&v102[2].v;
          *(&v14 + 1) = v15;
          v16 = [v13 initWithPoint:v14];

          v17 = [v16 cGraphNode2D];
          v109 = &v102;
          std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102)[3] = v17;
          GKCGraph::addNode(this, [v16 cGraphNode2D]);
        }

        v102 = *(v103 + 2);
        v109 = &v102;
        if (!std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102)[3])
        {
          v18 = objc_loadWeakRetained(this + 83);
          v19 = objc_alloc([v18 nodeClass]);
          *&v20 = *&v102->v;
          v21 = *&v102[2].v;
          *(&v20 + 1) = v21;
          v22 = [v19 initWithPoint:v20];

          v23 = [v22 cGraphNode2D];
          v109 = &v102;
          std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102)[3] = v23;
          GKCGraph::addNode(this, [v22 cGraphNode2D]);
        }

        v102 = *(v103 + 3);
        v109 = &v102;
        if (!std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102)[3])
        {
          break;
        }
      }

      if (*(this + 657) == 1)
      {
        goto LABEL_22;
      }

LABEL_3:
      v3 = v99 + 1;
      if (v99 + 1 == v108)
      {
        goto LABEL_25;
      }
    }

    v43 = objc_loadWeakRetained(this + 83);
    v44 = objc_alloc([v43 nodeClass]);
    *&v45 = *&v102->v;
    v46 = *&v102[2].v;
    *(&v45 + 1) = v46;
    v47 = [v44 initWithPoint:v45];

    v48 = [v47 cGraphNode2D];
    v109 = &v102;
    std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102)[3] = v48;
    GKCGraph::addNode(this, [v47 cGraphNode2D]);

    if (*(this + 657) != 1)
    {
      goto LABEL_3;
    }

LABEL_22:
    v24 = *(v103 + 1);
    v25 = *(v103 + 2);
    v26 = *v24;
    v27 = v24[1];
    v28 = *v25;
    v29 = v25[1];
    v30 = *(v103 + 3);
    v31 = *v30;
    v32 = v30[1];
    v33 = objc_loadWeakRetained(this + 83);
    v34 = objc_alloc([v33 nodeClass]);
    v35.f32[0] = v26;
    v36 = v27;
    v35.f32[1] = v36;
    v37.f32[0] = v28;
    v38 = v29;
    v37.f32[1] = v38;
    v39 = vadd_f32(v37, v35);
    v37.f32[0] = v31;
    v40 = v32;
    v37.f32[1] = v40;
    v41 = [v34 initWithPoint:{COERCE_DOUBLE(vmul_f32(vadd_f32(v37, v39), v4))}];

    v42 = [v41 cGraphNode2D];
    v109 = &v103;
    std::__hash_table<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::hash<p2t::Triangle *>,std::equal_to<p2t::Triangle *>,true>,std::__unordered_map_equal<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::equal_to<p2t::Triangle *>,std::hash<p2t::Triangle *>,true>,std::allocator<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Triangle *,std::piecewise_construct_t const&,std::tuple<p2t::Triangle * const&>,std::tuple<>>(this + 67, &v103)[3] = v42;
    GKCGraph::addNode(this, [v41 cGraphNode2D]);

    goto LABEL_3;
  }

LABEL_25:
  if (*(this + 658))
  {
    v49 = *(this + 79);
    if (v49)
    {
      i = v49[3];
      if (i != v49[4])
      {
        goto LABEL_30;
      }

      while (1)
      {
        v49 = *v49;
        if (!v49)
        {
          break;
        }

        for (i = v49[3]; i != v49[4]; ++i)
        {
LABEL_30:
          v103 = *i;
          v51 = *(v103 + 1);
          v52 = **v103;
          v53 = *(*v103 + 8);
          v54 = *v51;
          v55 = v51[1];
          v56 = objc_loadWeakRetained(this + 83);
          v57 = objc_alloc([v56 nodeClass]);
          v58.f32[0] = v52;
          v59 = v53;
          v58.f32[1] = v59;
          v60.f32[0] = v54;
          v61 = v55;
          v60.f32[1] = v61;
          v62 = [v57 initWithPoint:{COERCE_DOUBLE(vmla_f32(v58, vsub_f32(v60, v58), 0x3F0000003F000000))}];

          v63 = [v62 cGraphNode2D];
          v109 = &v103;
          std::__hash_table<std::__hash_value_type<p2t::Edge *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Edge *,std::__hash_value_type<p2t::Edge *,GKCGraphNode2D *>,std::hash<p2t::Edge *>,std::equal_to<p2t::Edge *>,true>,std::__unordered_map_equal<p2t::Edge *,std::__hash_value_type<p2t::Edge *,GKCGraphNode2D *>,std::equal_to<p2t::Edge *>,std::hash<p2t::Edge *>,true>,std::allocator<std::__hash_value_type<p2t::Edge *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Edge *,std::piecewise_construct_t const&,std::tuple<p2t::Edge * const&>,std::tuple<>>(this + 72, &v103)[3] = v63;
          GKCGraph::addNode(this, [v62 cGraphNode2D]);
        }
      }
    }
  }

  if (*(this + 656) == 1)
  {
    if (*(this + 658) == 1)
    {
      for (j = *(this + 74); j; j = *j)
      {
        v66 = j[2];
        v65 = j[3];
        v103 = *v66;
        v109 = &v103;
        v67 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v103)[3];
        v102 = *(v66 + 8);
        v109 = &v102;
        v68 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102)[3];
        GKCGraphNode::addConnectionToNode(v65, v67, 1);
        GKCGraphNode::addConnectionToNode(v65, v68, 1);
      }
    }

    else
    {
      v69 = *(this + 79);
      if (v69)
      {
        for (k = v69[3]; ; k = v69[3])
        {
          while (k != v69[4])
          {
            v71 = *k;
            v103 = **k;
            v109 = &v103;
            v72 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v103)[3];
            v102 = v71[1];
            v109 = &v102;
            v73 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102);
            GKCGraphNode::addConnectionToNode(v72, v73[3], 1);
            ++k;
          }

          v69 = *v69;
          if (!v69)
          {
            break;
          }
        }
      }
    }
  }

  v74 = *(this + 658);
  if (*(this + 657) == 1 && (*(this + 658) & 1) == 0)
  {
    v75 = v107;
    if (v107 == v108)
    {
      goto LABEL_73;
    }

    do
    {
      v103 = *v75;
      v109 = &v103;
      v76 = std::__hash_table<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::hash<p2t::Triangle *>,std::equal_to<p2t::Triangle *>,true>,std::__unordered_map_equal<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::equal_to<p2t::Triangle *>,std::hash<p2t::Triangle *>,true>,std::allocator<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Triangle *,std::piecewise_construct_t const&,std::tuple<p2t::Triangle * const&>,std::tuple<>>(this + 67, &v103)[3];
      v77 = v103;
      v78 = *(v103 + 4);
      v102 = v78;
      v79 = v108;
      if (v78)
      {
        v80 = v107;
        if (v107 != v108)
        {
          while (*v80 != v78)
          {
            if (++v80 == v108)
            {
              goto LABEL_55;
            }
          }

          if (v80 != v108)
          {
            v109 = &v102;
            v81 = std::__hash_table<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::hash<p2t::Triangle *>,std::equal_to<p2t::Triangle *>,true>,std::__unordered_map_equal<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::equal_to<p2t::Triangle *>,std::hash<p2t::Triangle *>,true>,std::allocator<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Triangle *,std::piecewise_construct_t const&,std::tuple<p2t::Triangle * const&>,std::tuple<>>(this + 67, &v102);
            GKCGraphNode::addConnectionToNode(v76, v81[3], 0);
            v77 = v103;
            v79 = v108;
          }
        }
      }

LABEL_55:
      v82 = *(v77 + 5);
      v102 = v82;
      if (v82)
      {
        v83 = v107;
        if (v107 != v79)
        {
          while (*v83 != v82)
          {
            if (++v83 == v79)
            {
              goto LABEL_62;
            }
          }

          if (v83 != v79)
          {
            v109 = &v102;
            v84 = std::__hash_table<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::hash<p2t::Triangle *>,std::equal_to<p2t::Triangle *>,true>,std::__unordered_map_equal<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::equal_to<p2t::Triangle *>,std::hash<p2t::Triangle *>,true>,std::allocator<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Triangle *,std::piecewise_construct_t const&,std::tuple<p2t::Triangle * const&>,std::tuple<>>(this + 67, &v102);
            GKCGraphNode::addConnectionToNode(v76, v84[3], 0);
            v77 = v103;
            v79 = v108;
          }
        }
      }

LABEL_62:
      v85 = *(v77 + 6);
      v102 = v85;
      if (v85)
      {
        v86 = v107;
        if (v107 != v79)
        {
          while (*v86 != v85)
          {
            if (++v86 == v79)
            {
              goto LABEL_47;
            }
          }

          if (v86 != v79)
          {
            v109 = &v102;
            v87 = std::__hash_table<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::hash<p2t::Triangle *>,std::equal_to<p2t::Triangle *>,true>,std::__unordered_map_equal<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::equal_to<p2t::Triangle *>,std::hash<p2t::Triangle *>,true>,std::allocator<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Triangle *,std::piecewise_construct_t const&,std::tuple<p2t::Triangle * const&>,std::tuple<>>(this + 67, &v102);
            GKCGraphNode::addConnectionToNode(v76, v87[3], 0);
            v79 = v108;
          }
        }
      }

LABEL_47:
      ++v75;
    }

    while (v75 != v79);
    v74 = *(this + 658);
  }

  if ((v74 & 1) != 0 && v107 != v108)
  {
    v103 = *v107;
    operator new();
  }

LABEL_73:
  if (*(this + 657) == 1 && *(this + 656) == 1)
  {
    v88 = v107;
    if (v107 != v108)
    {
      do
      {
        v103 = *v88;
        v109 = &v103;
        v89 = std::__hash_table<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::hash<p2t::Triangle *>,std::equal_to<p2t::Triangle *>,true>,std::__unordered_map_equal<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::equal_to<p2t::Triangle *>,std::hash<p2t::Triangle *>,true>,std::allocator<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Triangle *,std::piecewise_construct_t const&,std::tuple<p2t::Triangle * const&>,std::tuple<>>(this + 67, &v103)[3];
        v102 = *(v103 + 1);
        v109 = &v102;
        v90 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102);
        GKCGraphNode::addConnectionToNode(v90[3], v89, 1);
        v102 = *(v103 + 2);
        v109 = &v102;
        v91 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102);
        GKCGraphNode::addConnectionToNode(v91[3], v89, 1);
        v102 = *(v103 + 3);
        v109 = &v102;
        v92 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v102);
        GKCGraphNode::addConnectionToNode(v92[3], v89, 1);
        ++v88;
      }

      while (v88 != v108);
    }
  }

  v93 = v105[0];
  if (v105[0])
  {
    do
    {
      v95 = *v93;
      v96 = v93[5];
      if (v96)
      {
        do
        {
          v97 = *v96;
          operator delete(v96);
          v96 = v97;
        }

        while (v97);
      }

      v98 = v93[3];
      v93[3] = 0;
      if (v98)
      {
        operator delete(v98);
      }

      operator delete(v93);
      v93 = v95;
    }

    while (v95);
  }

  v94 = __p[0];
  __p[0] = 0;
  if (v94)
  {
    operator delete(v94);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }
}

void sub_2389B0280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v23 = __p;
  if (__p)
  {
    do
    {
      v25 = *v23;
      v26 = v23[5];
      if (v26)
      {
        do
        {
          v27 = *v26;
          operator delete(v26);
          v26 = v27;
        }

        while (v27);
      }

      v28 = v23[3];
      v23[3] = 0;
      if (v28)
      {
        operator delete(v28);
      }

      operator delete(v23);
      v23 = v25;
    }

    while (v25);
  }

  if (a15)
  {
    operator delete(a15);
    v24 = a21;
    if (!a21)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v24 = a21;
    if (!a21)
    {
      goto LABEL_4;
    }
  }

  operator delete(v24);
  _Unwind_Resume(exception_object);
}

uint64_t GKCMeshGraph::TriangleAtIndex(p2t::CDT **this, int a2)
{
  p2t::CDT::GetTriangles(this[43], __p);
  v3 = *(__p[0] + a2);
  __p[1] = __p[0];
  operator delete(__p[0]);
  return v3;
}

unint64_t GKCMeshGraph::GetNumTriangles(p2t::CDT **this)
{
  p2t::CDT::GetTriangles(this[43], &v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return (v2 - v1) >> 3;
}

void GKCMeshGraph::ConnectNodeUsingObstacles(p2t::CDT **this, float32x2_t *a2)
{
  v25 = 0;
  p2t::CDT::GetTriangles(this[43], &__p);
  v4 = __p;
  if (__p == v24)
  {
LABEL_15:
    __assert_rtn("ConnectNodeUsingObstacles", "GKCMeshGraph.mm", 480, "triangleInside != nullptr");
  }

  v5 = a2[8];
  while (1)
  {
    v6 = *v4;
    v7 = vsub_f32(vcvt_f32_f64(**(*v4 + 1)), v5);
    v8 = vsub_f32(vcvt_f32_f64(**(*v4 + 2)), v5);
    v9 = vsub_f32(vcvt_f32_f64(**(*v4 + 3)), v5);
    v10 = vmul_f32(v7, v8);
    v11 = vmul_f32(v9, v7);
    v12 = vmul_f32(v9, v8);
    v13 = vadd_f32(vzip1_s32(v12, v11), vzip2_s32(v12, v11));
    v14 = vmul_f32(v9, v9);
    v15 = vadd_f32(vzip1_s32(v14, v10), vzip2_s32(v14, v10));
    v16 = vmul_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15));
    if ((vcgt_f32(vdup_lane_s32(v16, 1), v16).u8[0] & 1) == 0)
    {
      v17 = vmul_f32(v8, v8);
      if (vcge_f32(vmul_lane_f32(v13, v15, 1), vmul_lane_f32(vadd_f32(v17, vdup_lane_s32(v17, 1)), v13, 1)).u8[0])
      {
        break;
      }
    }

    if (++v4 == v24)
    {
      goto LABEL_15;
    }
  }

  v25 = *v4;
  if (*(this + 656) == 1)
  {
    v22 = v6[1];
    v26 = &v22;
    v18 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v22);
    GKCGraphNode::addConnectionToNode(a2, v18[3], 1);
    v22 = v6[2];
    v26 = &v22;
    v19 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v22);
    GKCGraphNode::addConnectionToNode(a2, v19[3], 1);
    v22 = v6[3];
    v26 = &v22;
    v20 = std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(this + 62, &v22);
    GKCGraphNode::addConnectionToNode(a2, v20[3], 1);
  }

  if (*(this + 658) == 1)
  {
    operator new();
  }

  if (*(this + 657) == 1)
  {
    v26 = &v25;
    v21 = std::__hash_table<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::hash<p2t::Triangle *>,std::equal_to<p2t::Triangle *>,true>,std::__unordered_map_equal<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::equal_to<p2t::Triangle *>,std::hash<p2t::Triangle *>,true>,std::allocator<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Triangle *,std::piecewise_construct_t const&,std::tuple<p2t::Triangle * const&>,std::tuple<>>(this + 67, &v25);
    GKCGraphNode::addConnectionToNode(a2, v21[3], 1);
  }

  GKCGraph::addNode(this, a2);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void sub_2389B0BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void **std::vector<std::vector<ClipperLib::IntPoint>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__hash_table<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_2389B1080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v4 = *v3;
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,std::unordered_map<p2t::Point *,BOOL>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<p2t::Point *,BOOL>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,BOOL>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,BOOL>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,BOOL>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_2389B1970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<p2t::Point *,std::vector<p2t::Edge *>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void *std::__hash_table<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::hash<p2t::Point *>,std::equal_to<p2t::Point *>,true>,std::__unordered_map_equal<p2t::Point *,std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>,std::equal_to<p2t::Point *>,std::hash<p2t::Point *>,true>,std::allocator<std::__hash_value_type<p2t::Point *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Point *,std::piecewise_construct_t const&,std::tuple<p2t::Point * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::hash<p2t::Triangle *>,std::equal_to<p2t::Triangle *>,true>,std::__unordered_map_equal<p2t::Triangle *,std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>,std::equal_to<p2t::Triangle *>,std::hash<p2t::Triangle *>,true>,std::allocator<std::__hash_value_type<p2t::Triangle *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Triangle *,std::piecewise_construct_t const&,std::tuple<p2t::Triangle * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<p2t::Edge *,GKCGraphNode2D *>,std::__unordered_map_hasher<p2t::Edge *,std::__hash_value_type<p2t::Edge *,GKCGraphNode2D *>,std::hash<p2t::Edge *>,std::equal_to<p2t::Edge *>,true>,std::__unordered_map_equal<p2t::Edge *,std::__hash_value_type<p2t::Edge *,GKCGraphNode2D *>,std::equal_to<p2t::Edge *>,std::hash<p2t::Edge *>,true>,std::allocator<std::__hash_value_type<p2t::Edge *,GKCGraphNode2D *>>>::__emplace_unique_key_args<p2t::Edge *,std::piecewise_construct_t const&,std::tuple<p2t::Edge * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_2389B325C(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v2, 0xA1C407DA79AE9);

  _Unwind_Resume(a1);
}

void OpenSteer::SphericalObstacle::steerToAvoid(float *a1, uint64_t a2)
{
  (*(*a2 + 200))(a2);
  v4 = a1[2];
  v5 = (*(*a2 + 176))(a2) + v4;
  v6 = a1[3] - (*(*a2 + 48))(a2);
  v8 = a1[4] - v7;
  v10 = a1[5] - v9;
  v11 = (*(*a2 + 32))(a2);
  v14 = v6 - ((*(*a2 + 32))(a2) * (((v11 * v6) + (v12 * v8)) + (v13 * v10)));
}

void GKCGraph::GKCGraph(GKCGraph *this)
{
  *this = &unk_284B500D8;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

void GKCGraph::~GKCGraph(id *this)
{
  *this = &unk_284B500D8;
  objc_destroyWeak(this + 4);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284B500D8;
  objc_destroyWeak(this + 4);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284B500D8;
  objc_destroyWeak(this + 4);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE6C500);
}

uint64_t GKCGraph::connectNodeToLowestCostNode(GKCGraph *this, GKCGraphNode *a2, int a3)
{
  v5 = *(this + 1);
  if (v5 != *(this + 2))
  {
    v7 = 0;
    v8 = 3.4028e38;
    do
    {
      v10 = *v5++;
      v9 = v10;
      (*(*a2 + 24))(a2, v10);
      if (v7 == 0 || v11 < v8)
      {
        v8 = v11;
        v7 = v9;
      }
    }

    while (v5 != *(this + 2));
    if (v7)
    {
      GKCGraphNode::addConnectionToNode(v7, a2, a3);
    }
  }

  return GKCGraph::addNode(this, a2);
}

uint64_t GKCGraph::addNode(id *this, GKCGraphNode *a2)
{
  v7 = a2;
  std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100]((this + 1), &v7);
  WeakRetained = objc_loadWeakRetained(this + 4);
  v4 = [WeakRetained nodesMut];

  v5 = objc_loadWeakRetained(v7 + 7);
  return [v4 addObject:v5];
}

void GKCGraph::removeNode(GKCGraph *this, id *a2)
{
  v4 = *(this + 2) - *(this + 1);
  if ((v4 >> 3) >= 1)
  {
    v5 = (v4 >> 3) & 0x7FFFFFFF;
    v6 = 8 * v5 - 8;
    v7 = -8 * v5;
    do
    {
      GKCGraphNode::removeConnectionToNode(*(*(this + 1) + v6), a2, 1);
      v8 = *(this + 1);
      if (*(v8 + v6) == a2)
      {
        v9 = v8 + v6;
        v10 = *(this + 2);
        v11 = v7 + v10 - v8;
        if (v8 + v6 + 8 != v10)
        {
          memmove((v8 + v6), (v8 + 8 * v5), v7 + v10 - v8);
        }

        *(this + 2) = v9 + v11;
      }

      --v5;
      v6 -= 8;
      v7 += 8;
    }

    while ((v5 + 1) > 1);
  }

  WeakRetained = objc_loadWeakRetained(this + 4);
  v12 = [WeakRetained nodesMut];
  v13 = objc_loadWeakRetained(a2 + 7);
  [v12 removeObject:v13];
}

void GKCGridGraph::GKCGridGraph(GKCGridGraph *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_284B50100;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 12) = 0;
}

void GKCGridGraph::initDontConstructNodes(void *a1, int a2, int a3, char a4, uint64_t a5, double a6)
{
  v10 = a1[8];
  v8 = (a1 + 8);
  v9 = v10;
  *(v8 - 8) = a4;
  *(v8 - 24) = a6;
  *(v8 - 16) = a2;
  *(v8 - 12) = a3;
  v11 = (a3 * a2);
  v12 = (*(v8 + 8) - v10) >> 3;
  if (v11 > v12)
  {
    std::vector<GKCGridGraphNode *>::__append(v8, v11 - v12);
LABEL_3:
    a1[11] = a5;
    return;
  }

  if (v11 >= v12)
  {
    goto LABEL_3;
  }

  a1[9] = v9 + 8 * v11;
  a1[11] = a5;
}

void GKCGridGraph::init(uint64_t a1, unsigned int a2, unsigned int a3, char a4, void *a5, double a6)
{
  v10 = (a1 + 64);
  v9 = *(a1 + 64);
  *(a1 + 56) = a4;
  *(a1 + 40) = a6;
  *(a1 + 48) = a2;
  *(a1 + 52) = a3;
  v11 = a3 * a2;
  v12 = (*(a1 + 72) - v9) >> 3;
  if (v11 <= v12)
  {
    if (v11 < v12)
    {
      *(a1 + 72) = v9 + 8 * v11;
    }
  }

  else
  {
    v47 = a6;
    std::vector<GKCGridGraphNode *>::__append(a1 + 64, v11 - v12);
    a6 = v47;
  }

  *(a1 + 88) = a5;
  if (a2 && a3)
  {
    v13 = 0;
    v14 = 0;
    v15 = a6;
    v16 = a3;
    v42 = __PAIR64__(a3, a2);
    v45 = v10;
    v41 = a3;
    do
    {
      v43 = v14;
      v44 = v13;
      v17 = HIDWORD(v15);
      v48 = v14 + LODWORD(v15);
      v18 = v16;
      do
      {
        v19 = [a5 nodeWithGridPosition:{COERCE_DOUBLE(__PAIR64__(v17, v48)), v41, v42}];
        v20 = [v19 cGridGraphNode];
        v21 = v20;
        v23 = *(a1 + 16);
        v22 = *(a1 + 24);
        if (v23 >= v22)
        {
          v25 = *(a1 + 8);
          v26 = v23 - v25;
          v27 = (v23 - v25) >> 3;
          v28 = v27 + 1;
          if ((v27 + 1) >> 61)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
          }

          v29 = v22 - v25;
          if (v29 >> 2 > v28)
          {
            v28 = v29 >> 2;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            if (!(v30 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v31 = (v23 - v25) >> 3;
          v32 = (8 * v27);
          v33 = (8 * v27 - 8 * v31);
          *v32 = v20;
          v24 = v32 + 1;
          memcpy(v33, v25, v26);
          *(a1 + 8) = v33;
          *(a1 + 16) = v24;
          *(a1 + 24) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v23 = v20;
          v24 = v23 + 1;
        }

        *(a1 + 16) = v24;
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v35 = [WeakRetained nodesMut];

        v36 = objc_loadWeakRetained((v21 + 56));
        [v35 addObject:v36];
        *(*v45 + 8 * v13) = [v19 cGridGraphNode];

        ++v13;
        ++v17;
        --v18;
      }

      while (v18);
      v14 = v43 + 1;
      v13 = v44 + HIDWORD(v42);
      v16 = v41;
    }

    while (v43 + 1 != v42);
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = v41;
      v40 = v37;
      do
      {
        GKCGridGraph::connectNodeToAdjacentNodesNoAdd(a1, *(*(a1 + 64) + 8 * v40++), 0);
        --v39;
      }

      while (v39);
      ++v38;
      v37 += HIDWORD(v42);
    }

    while (v38 != v42);
  }
}

void GKCGridGraph::connectNodeToAdjacentNodesNoAdd(int32x2_t *this, int32x2_t *a2, int a3)
{
  v3 = a2[8];
  v4 = this[5];
  v5 = vzip1_s32(v3, v4);
  if (v3.i32[0] < v4.i32[0] || (*&a2[8] < (this[6].i32[0] + *&this[5]) ? (v6 = v3.i32[1] < v4.i32[1]) : (v6 = 1), v6 || (v8 = this[6].i32[1], v3.i32[1] >= v8 + v4.i32[1]) || !*(*&this[8] + 8 * (v3.i32[1] - v4.i32[1] + v8 * (v3.i32[0] - v4.i32[0])))))
  {
    v7 = vsub_s32(v3, v4);
    v8 = this[6].i32[1];
    v9 = (v7.i32[1] + v8 * v7.i32[0]);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = this[8];
      if (v9 < (*&this[9] - *&v10) >> 3)
      {
        *(*&v10 + 8 * v9) = a2;
        v3 = a2[8];
        v4 = this[5];
        v5 = vzip1_s32(v3, v4);
      }
    }
  }

  if (v5.i32[0] > v5.i32[1])
  {
    v11 = v5.i32[0] > this[6].i32[0] + v5.i32[1] || v3.i32[1] < v4.i32[1];
    if (!v11 && v3.i32[1] < v8 + v4.i32[1])
    {
      v37 = *(*&this[8] + 8 * (v3.i32[1] - v4.i32[1] + v8 * (v5.i32[0] + ~v5.i32[1])));
      if (v37)
      {
        v38 = this;
        v39 = a2;
        v40 = a3;
        GKCGraphNode::addConnectionToNode(v37, a2, a3);
        this = v38;
        a2 = v39;
        a3 = v40;
        v3 = *(v39 + 64);
        v4 = *(v38 + 40);
        v5 = vzip1_s32(v3, v4);
      }
    }
  }

  if (v5.i32[0] + 1 >= v5.i32[1] && v5.i32[0] + 1 < this[6].i32[0] + v5.i32[1] && v3.i32[1] >= v4.i32[1])
  {
    v41 = this[6].i32[1];
    if (v3.i32[1] < v41 + v4.i32[1])
    {
      v42 = *(*&this[8] + 8 * (v3.i32[1] - v4.i32[1] + v41 * (v5.i32[0] + 1 - v5.i32[1])));
      if (v42)
      {
        v43 = this;
        v44 = a2;
        v45 = a3;
        GKCGraphNode::addConnectionToNode(v42, a2, a3);
        this = v43;
        a2 = v44;
        a3 = v45;
        v3 = *(v44 + 64);
        v4 = *(v43 + 40);
        v5 = vzip1_s32(v3, v4);
      }
    }
  }

  v14 = v3.i32[1];
  if (v5.i32[0] >= v5.i32[1])
  {
    v15 = v3.i32[1] + 1;
    if (v5.i32[0] < this[6].i32[0] + v5.i32[1] && v15 >= v4.i32[1])
    {
      v46 = this[6].i32[1];
      if (v15 < v46 + v4.i32[1])
      {
        v47 = *(*&this[8] + 8 * (v15 - v4.i32[1] + v46 * (v5.i32[0] - v5.i32[1])));
        if (v47)
        {
          v48 = this;
          v49 = a2;
          v50 = a3;
          GKCGraphNode::addConnectionToNode(v47, a2, a3);
          this = v48;
          a2 = v49;
          a3 = v50;
          v4 = *(v48 + 40);
          v14 = HIDWORD(*&v49[8]);
          v5 = vzip1_s32(v49[8], v4);
        }
      }
    }
  }

  if (v5.i32[0] >= v5.i32[1] && v5.i32[0] < this[6].i32[0] + v5.i32[1] && v14 > v4.i32[1])
  {
    v51 = this[6].i32[1];
    if (v14 <= v51 + v4.i32[1])
    {
      v52 = *(*&this[8] + 8 * (v14 + ~v4.i32[1] + v51 * (v5.i32[0] - v5.i32[1])));
      if (v52)
      {
        v53 = this;
        v54 = a2;
        v55 = a3;
        GKCGraphNode::addConnectionToNode(v52, a2, a3);
        this = v53;
        a2 = v54;
        a3 = v55;
      }
    }
  }

  if (this[7].i8[0] == 1)
  {
    v18 = a2[8];
    v19 = v18.i32[1];
    v20 = this[5];
    v21 = vzip1_s32(v18, v20);
    v22 = v18.i32[1] + 1;
    if (v18.i32[0] > v20.i32[0] && v18.i32[0] <= this[6].i32[0] + v20.i32[0] && v22 >= v20.i32[1])
    {
      v23 = this[6].i32[1];
      if (v22 < v23 + v20.i32[1])
      {
        v24 = *(*&this[8] + 8 * (v22 - v20.i32[1] + v23 * (v18.i32[0] + ~v20.i32[0])));
        if (v24)
        {
          v25 = this;
          v26 = a2;
          v27 = a3;
          GKCGraphNode::addConnectionToNode(v24, a2, a3);
          this = v25;
          a2 = v26;
          a3 = v27;
          v28 = *(v26 + 64);
          v20 = *(v25 + 40);
          v19 = v28.i32[1];
          v22 = v28.i32[1] + 1;
          v21 = vzip1_s32(v28, v20);
        }
      }
    }

    if (v21.i32[0] + 1 >= v21.i32[1] && v21.i32[0] + 1 < this[6].i32[0] + v21.i32[1] && v22 >= v20.i32[1])
    {
      v56 = this[6].i32[1];
      if (v22 < v56 + v20.i32[1])
      {
        v57 = *(*&this[8] + 8 * (v22 - v20.i32[1] + v56 * (v21.i32[0] + 1 - v21.i32[1])));
        if (v57)
        {
          v58 = this;
          v59 = a2;
          v60 = a3;
          GKCGraphNode::addConnectionToNode(v57, a2, a3);
          this = v58;
          a2 = v59;
          a3 = v60;
          v20 = *(v58 + 40);
          v19 = HIDWORD(*&v59[8]);
          v21 = vzip1_s32(v59[8], v20);
        }
      }
    }

    v30 = v21.i32[0];
    v31 = v21.i32[1];
    if (v21.i32[0] > v21.i32[1] && v21.i32[0] <= this[6].i32[0] + v21.i32[1] && v19 > v20.i32[1])
    {
      v61 = this[6].i32[1];
      if (v19 <= v61 + v20.i32[1])
      {
        v62 = *(*&this[8] + 8 * (v19 + ~v20.i32[1] + v61 * (v21.i32[0] + ~v21.i32[1])));
        if (v62)
        {
          v63 = this;
          v64 = a2;
          v65 = a3;
          GKCGraphNode::addConnectionToNode(v62, a2, a3);
          this = v63;
          a2 = v64;
          a3 = v65;
          v20 = *(v63 + 40);
          v19 = HIDWORD(*(v64 + 8));
          v30 = *(v64 + 8);
          v31 = v20.i32[0];
        }
      }
    }

    v33 = v30 + 1;
    v34 = v33 - v31;
    if (v33 >= v31 && v33 < this[6].i32[0] + v31 && v19 > v20.i32[1])
    {
      v35 = this[6].i32[1];
      if (v19 <= v35 + v20.i32[1])
      {
        v36 = *(*&this[8] + 8 * (v19 + ~v20.i32[1] + v35 * v34));
        if (v36)
        {

          GKCGraphNode::addConnectionToNode(v36, a2, a3);
        }
      }
    }
  }
}

void GKCGridGraph::~GKCGridGraph(GKCGridGraph *this)
{
  *this = &unk_284B50100;
  v2 = *(this + 8);
  if (v2 == *(this + 9))
  {
    *(this + 9) = v2;
    objc_destroyWeak(this + 12);
    v3 = *(this + 8);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  do
  {
    v5 = *v2;
    if (*v2)
    {
      WeakRetained = objc_loadWeakRetained(v5 + 7);

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained(v5 + 7);
        [v7 deleteCGraphNode];
      }

      else
      {
        (*(*v5 + 1))(v5);
      }
    }

    ++v2;
  }

  while (v2 != *(this + 9));
  *(this + 9) = *(this + 8);
  objc_destroyWeak(this + 12);
  v3 = *(this + 8);
  if (v3)
  {
LABEL_3:
    *(this + 9) = v3;
    operator delete(v3);
  }

LABEL_4:
  *this = &unk_284B500D8;
  objc_destroyWeak(this + 4);
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

{
  GKCGridGraph::~GKCGridGraph(this);

  JUMPOUT(0x23EE6C500);
}

uint64_t GKCGridGraph::nodeAtGridPosition(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  if (SLODWORD(a2) < v2)
  {
    return 0;
  }

  if (SLODWORD(a2) >= *(a1 + 48) + v2)
  {
    return 0;
  }

  if (SHIDWORD(a2) < SHIDWORD(v2))
  {
    return 0;
  }

  v3 = *(a1 + 52);
  if (SHIDWORD(a2) >= v3 + HIDWORD(v2))
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 64) + 8 * (HIDWORD(a2) - HIDWORD(v2) + v3 * (LODWORD(a2) - v2)));
  }
}

uint64_t GKCGridGraph::addNodeToGridNodes(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a2[8];
  v3 = a1[5];
  if (v2.i32[0] >= v3.i32[0] && v2.i32[0] < a1[6].i32[0] + v3.i32[0] && v2.i32[1] >= v3.i32[1])
  {
    v9 = a1[6].i32[1];
    if (v2.i32[1] < v9 + v3.i32[1])
    {
      if (*(*&a1[8] + 8 * (v2.i32[1] - v3.i32[1] + v9 * (v2.i32[0] - v3.i32[0]))))
      {
        return 0;
      }
    }
  }

  v5 = vsub_s32(v2, v3);
  v6 = (v5.i32[1] + a1[6].i32[1] * v5.i32[0]);
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = a1[8];
  if (v6 >= (*&a1[9] - *&v7) >> 3)
  {
    return 0;
  }

  *(*&v7 + 8 * v6) = a2;
  return 1;
}

void GKCGridGraph::connectNodeToAdjacentNodes(int32x2_t *this, GKCGridGraphNode *a2)
{
  GKCGraph::addNode(this, a2);

  GKCGridGraph::connectNodeToAdjacentNodesNoAdd(this, a2, 1);
}

void GKCGridGraph::removeNode(int32x2_t *this, GKCGraphNode *lpsrc)
{
  if (lpsrc)
  {
    v2 = **lpsrc;
    v3 = this;
    v4 = lpsrc;
    lpsrc = v4;
    v6 = v5;
    this = v3;
    if (v6)
    {
      v7 = vsub_s32(v6[8], v3[5]);
      v8 = (v7.i32[1] + v7.i32[0] * v3[6].i32[1]);
      if ((v8 & 0x80000000) != 0)
      {
        return;
      }

      v9 = v3[8];
      if (v8 >= (*&v3[9] - *&v9) >> 3)
      {
        return;
      }

      *(*&v9 + 8 * v8) = 0;
    }
  }

  GKCGraph::removeNode(this, lpsrc);
}

void GKCObstacleGraph::GKCObstacleGraph(GKCObstacleGraph *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_284B50128;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  *(this + 22) = 0;
  *(this + 17) = 0;
  *(this + 18) = this + 152;
  *(this + 20) = 0;
  *(this + 21) = this + 176;
  *(this + 23) = 0;
  *(this + 24) = 0;
}

void GKCObstacleGraph::~GKCObstacleGraph(GKCObstacleGraph *this)
{
  *this = &unk_284B50128;
  v2 = *(this + 11);
  for (i = *(this + 12); i != v2; i -= 8)
  {
    v4 = *(i - 8);
  }

  *(this + 12) = v2;
  objc_destroyWeak(this + 24);
  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(this + 168, *(this + 22));
  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(this + 144, *(this + 19));
  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    v7 = *(this + 12);
    v8 = *(this + 11);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 8);
        v7 -= 8;
      }

      while (v7 != v6);
      v8 = *(this + 11);
    }

    *(this + 12) = v6;
    operator delete(v8);
  }

  v10 = *(this + 8);
  if (v10)
  {
    *(this + 9) = v10;
    operator delete(v10);
  }

  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }

  *this = &unk_284B500D8;
  objc_destroyWeak(this + 4);
  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

{
  GKCObstacleGraph::~GKCObstacleGraph(this);

  JUMPOUT(0x23EE6C500);
}

uint64_t GKCObstacleGraph::connectNodeUsingObstacles(GKCObstacleGraph *this, float32x2_t *a2)
{
  v4 = *(this + 1);
  if (v4 != *(this + 2))
  {
    v5 = MEMORY[0x277CBEBF8];
    do
    {
      v6 = *v4++;
      GKCObstacleGraph::connectNodeToNodeUsingObstacles(this, a2, v6, v5);
    }

    while (v4 != *(this + 2));
  }

  return GKCGraph::addNode(this, a2);
}

uint64_t GKCObstacleGraph::connectNodeUsingObstaclesIgnoringObstacles(uint64_t a1, float32x2_t *a2, void *a3)
{
  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v7 = *i;
    GKCObstacleGraph::connectNodeToNodeUsingObstacles(a1, a2, v7, a3);
  }

  return GKCGraph::addNode(a1, a2);
}

void GKCObstacleGraph::connectNodeToNodeUsingObstacles(uint64_t a1, float32x2_t *a2, GKCGraphNode *this, void *a4)
{
  v5 = this;
  v31 = *MEMORY[0x277D85DE8];
  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v8 != v9)
  {
    while (*v8 != a2)
    {
      if (++v8 == v9)
      {
        goto LABEL_6;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_6:
    v10 = *(a1 + 64);
    if (v10 != *(a1 + 72))
    {
      v28 = (a1 + 152);
      do
      {
        v11 = *v10;
        memset(v29, 0, sizeof(v29));
        v12 = a4;
        if ([v12 countByEnumeratingWithState:v29 objects:v30 count:16])
        {
          v13 = a4;
          v14 = [**(&v29[0] + 1) cPolygonObstacle];
          v15 = v28;
LABEL_11:
          v16 = *v15;
          if (!*v15)
          {
LABEL_15:
            operator new();
          }

          while (1)
          {
            v15 = v16;
            v17 = v16[4];
            if (v14 < v17)
            {
              goto LABEL_11;
            }

            if (v17 >= v14)
            {
              break;
            }

            v16 = v15[1];
            if (!v16)
            {
              goto LABEL_15;
            }
          }

          v18 = v15;
          a4 = v13;
          v19 = v11 == v18[5];

          v5 = this;
          if (v19)
          {
            goto LABEL_8;
          }
        }

        else
        {
        }

        if (v11 == *&a2[5] && *&a2[4] == *&v5[4])
        {
          v20 = a2[6].i32[0];
          v21 = v5[6].i32[0];
          if (v20 - v21 >= 0)
          {
            v22 = v20 - v21;
          }

          else
          {
            v22 = v21 - v20;
          }

          v23 = v22 == 1;
          v24 = ((*(v11 + 16) - *(v11 + 8)) >> 3) - 1;
          if (v20)
          {
            if (v20 == v24)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v23 = v21 == v24 || v22 == 1;
            if (((*(v11 + 16) - *(v11 + 8)) >> 3) == 1)
            {
LABEL_29:
              if (v21 == 0 || v23)
              {
                goto LABEL_8;
              }

              goto LABEL_20;
            }
          }

          if (v23)
          {
            goto LABEL_8;
          }
        }

LABEL_20:
        if (GKCPolygonObstacle::intersectsLineFrom(v11, a2 + 8, v5 + 8) || GKCPolygonObstacle::intersectsPoint(v11, &a2[8]) || GKCPolygonObstacle::intersectsPoint(v11, &v5[8]))
        {
          goto LABEL_41;
        }

LABEL_8:
        ++v10;
      }

      while (v10 != *(a1 + 72));
    }

    GKCGraphNode::addConnectionToNode(v5, a2, 1);
  }

LABEL_41:
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t GKCObstacleGraph::connectNodeUsingObstaclesIgnoringBufferRadiusOfObstacles(uint64_t a1, float32x2_t *a2, void *a3)
{
  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v7 = *i;
    GKCObstacleGraph::connectNodeToNodeUsingObstaclesIgnoreBufferRadius(a1, a2, v7, a3);
  }

  return GKCGraph::addNode(a1, a2);
}

void GKCObstacleGraph::connectNodeToNodeUsingObstaclesIgnoreBufferRadius(uint64_t a1, float32x2_t *a2, float32x2_t *this, void *a4)
{
  v8 = this[1];
  v9 = this[2];
  if (v8 != v9)
  {
    while (*v8 != a2)
    {
      if (++v8 == v9)
      {
        goto LABEL_7;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_7:
    v10 = *(a1 + 64);
    if (v10 == *(a1 + 72))
    {
LABEL_41:

      GKCGraphNode::addConnectionToNode(this, a2, 1);
      return;
    }

    v11 = (a1 + 176);
    while (1)
    {
      v12 = *v10;
      v13 = *v11;
      if (!*v11)
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = v13[4];
          if (v12 >= v15)
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_15;
          }
        }

        if (v15 >= v12)
        {
          break;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v16 = v14[5];
      if (![a4 containsObject:v16[8]])
      {
        v16 = v12;
      }

      if (v16 == *&a2[5] && *&a2[4] == *&this[4])
      {
        v17 = a2[6].i32[0];
        v18 = this[6].i32[0];
        if (v17 - v18 >= 0)
        {
          v19 = v17 - v18;
        }

        else
        {
          v19 = v18 - v17;
        }

        v20 = v19 == 1;
        v21 = ((v16[2] - v16[1]) >> 3) - 1;
        if (v17)
        {
          if (v17 == v21)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v20 = v18 == v21 || v19 == 1;
          if (((v16[2] - v16[1]) >> 3) == 1)
          {
LABEL_30:
            if (v18 != 0 && !v20)
            {
              return;
            }

            goto LABEL_23;
          }
        }

        if (!v20)
        {
          return;
        }
      }

      else if (GKCPolygonObstacle::intersectsLineFrom(v16, a2 + 8, this + 8) || GKCPolygonObstacle::intersectsPoint(v16, &a2[8]) || GKCPolygonObstacle::intersectsPoint(v16, &this[8]))
      {
        return;
      }

LABEL_23:
      if (++v10 == *(a1 + 72))
      {
        goto LABEL_41;
      }
    }
  }
}

void GKCObstacleGraph::addObstacle(GKCObstacleGraph *this, GKCPolygonObstacle *a2, int a3)
{
  v46 = 0;
  v47 = a2;
  __p = 0;
  v45 = 0;
  GKCObstacleGraph::extrudeObstacleAndGenerateGraphNodes(this, a2, &__p);
  v5 = *([*__p cGraphNode2D] + 40);
  v43 = v5;
  if (a3)
  {
    v6 = *(this + 1);
    v7 = *(this + 2);
    if (v7 != v6)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = v8 + 1;
        v11 = (v7 - v6) >> 3;
        if (v11 > v8 + 1)
        {
          v12 = v9;
          do
          {
            v13 = *(v6 + 8 * v8);
            v14 = *(v6 + 8 * v12);
            if (GKCPolygonObstacle::intersectsLineFrom(v5, v13 + 8, v14 + 8) || GKCPolygonObstacle::intersectsPoint(v5, &v13[8]) || GKCPolygonObstacle::intersectsPoint(v5, &v14[8]))
            {
              v15 = *(this + 15);
              v16 = *(this + 16);
              if (v16 == v15)
              {
                goto LABEL_28;
              }

              v17 = (v16 - v15) >> 4;
              v18 = v17 <= 1 ? 1 : (v16 - v15) >> 4;
              if (*v15 != v13 || *(v15 + 1) != v14)
              {
                v20 = (v15 + 24);
                v21 = 1;
                do
                {
                  v22 = v21;
                  if (v18 == v21)
                  {
                    break;
                  }

                  v23 = *(v20 - 1);
                  v24 = *v20;
                  v20 += 2;
                  ++v21;
                }

                while (v23 != v13 || v24 != v14);
                if (v17 <= v22)
                {
LABEL_28:
                  GKCGraphNode::removeConnectionToNode(v13, v14, 0);
                  v15 = *(this + 15);
                  v16 = *(this + 16);
                  v17 = (v16 - v15) >> 4;
                }
              }

              if (v16 == v15)
              {
                goto LABEL_7;
              }

              v26 = v17 <= 1 ? 1 : v17;
              if (*v15 != v14 || *(v15 + 1) != v13)
              {
                v28 = (v15 + 24);
                v29 = 1;
                do
                {
                  v30 = v29;
                  if (v26 == v29)
                  {
                    break;
                  }

                  v31 = *(v28 - 1);
                  v32 = *v28;
                  v28 += 2;
                  ++v29;
                }

                while (v31 != v14 || v32 != v13);
                if (v17 <= v30)
                {
LABEL_7:
                  GKCGraphNode::removeConnectionToNode(v14, v13, 0);
                }
              }
            }

            ++v12;
            v6 = *(this + 1);
            v7 = *(this + 2);
            v11 = (v7 - v6) >> 3;
          }

          while (v11 > v12);
        }

        ++v9;
        ++v8;
      }

      while (v11 > v10);
    }
  }

  std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](this + 64, &v43);
  std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](this + 40, &v47);
  WeakRetained = objc_loadWeakRetained(this + 24);
  v35 = [WeakRetained mutObstacles];
  [v35 addObject:*(v47 + 8)];

  v37 = __p;
  v36 = v45;
  if (__p != v45)
  {
    v38 = MEMORY[0x277CBEBF8];
    do
    {
      v39 = [*v37 cGraphNode2D];
      for (i = *(this + 1); i != *(this + 2); ++i)
      {
        GKCObstacleGraph::connectNodeToNodeUsingObstacles(this, v39, *i, v38);
      }

      GKCGraph::addNode(this, v39);
      ++v37;
      v36 = v45;
    }

    while (v37 != v45);
    v37 = __p;
  }

  if (v37)
  {
    v41 = v37;
    if (v36 != v37)
    {
      do
      {
        v42 = *--v36;
      }

      while (v36 != v37);
      v41 = __p;
    }

    v45 = v37;
    operator delete(v41);
  }
}

void sub_2389B58E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389B58FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389B5914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389B5928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389B593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389B5950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389B5964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389B5978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GKCObstacleGraph::extrudeObstacleAndGenerateGraphNodes(uint64_t a1, GKCPolygonObstacle *a2, unint64_t *a3)
{
  std::vector<GKPolygonObstacle * {__strong}>::reserve(a3, (*(a2 + 2) - *(a2 + 1)) >> 3);
  v7 = GKCObstacleGraph::extrudeObstacle(a1, a2);
  v25 = v7;
  v8 = *(a1 + 96);
  if (v8 >= *(a1 + 104))
  {
    v10 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>((a1 + 88), &v25);
    v9 = v25;
  }

  else
  {
    v9 = v7;
    *v8 = v9;
    v10 = (v8 + 1);
  }

  *(a1 + 96) = v10;
  v11 = [v9 cPolygonObstacle];
  v12 = *(v11 + 16) - *(v11 + 8);
  if ((v12 >> 3) >= 1)
  {
    v13 = 0;
    v14 = (v12 >> 3) & 0x7FFFFFFF;
    v3.i32[0] = 955908096;
    do
    {
      while (1)
      {
        v15 = *(*(a2 + 1) + 8 * v13);
        v16 = *(*(v11 + 8) + 8 * v13);
        WeakRetained = objc_loadWeakRetained((a1 + 192));
        v18 = objc_alloc([WeakRetained nodeClass]);
        v19 = vsub_f32(v16, v15);
        v20 = vmul_f32(v19, v19);
        v20.i32[0] = vadd_f32(v20, vdup_lane_s32(v20, 1)).u32[0];
        v21 = vrsqrte_f32(v20.u32[0]);
        v24 = [v18 initWithPoint:{COERCE_DOUBLE(vmla_n_f32(v16, v19, vmul_f32(vrsqrts_f32(v20.u32[0], vmul_f32(v21, v21)), vmul_f32(v21, v3)).f32[0]))}];

        v22 = [v24 cGraphNode2D];
        *(v22 + 32) = a2;
        *(v22 + 40) = v11;
        *(v22 + 48) = v13;
        v23 = a3[1];
        if (v23 >= a3[2])
        {
          break;
        }

        *v23 = v24;
        a3[1] = (v23 + 1);

        if (v14 == ++v13)
        {
          goto LABEL_9;
        }
      }

      a3[1] = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(a3, &v24);

      ++v13;
    }

    while (v14 != v13);
  }

LABEL_9:
}

BOOL GKCObstacleGraph::isConnectedLockedFromNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 128) - v3;
  if (!v4)
  {
    return 0;
  }

  v5 = v4 >> 4;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (*v3 == a2 && v3[1] == a3)
  {
    return 1;
  }

  v8 = v3 + 3;
  v9 = 1;
  do
  {
    v10 = v9;
    if (v6 == v9)
    {
      break;
    }

    v11 = *(v8 - 1);
    v12 = *v8;
    v8 += 2;
    ++v9;
  }

  while (v11 != a2 || v12 != a3);
  return v5 > v10;
}

void GKCObstacleGraph::removeObstacle(GKCObstacleGraph *this, GKCPolygonObstacle *a2)
{
  v4 = *(this + 2) - *(this + 1);
  if ((v4 >> 3) >= 1)
  {
    v5 = ((v4 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      if (*(*(*(this + 1) + 8 * v5) + 32) == a2)
      {
        (*(*this + 16))(this);
      }

      v6 = v5-- + 1;
    }

    while (v6 > 1);
  }

  v7 = *(this + 19);
  if (!v7)
  {
LABEL_12:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = v7[4];
      if (v9 <= a2)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v11 = *(this + 5);
  v10 = *(this + 6);
  if (v11 != v10)
  {
    while (*v11 != a2)
    {
      if (++v11 == v10)
      {
        v11 = *(this + 6);
        break;
      }
    }
  }

  v12 = v8[5];
  v13 = v10 - (v11 + 1);
  if (v10 != v11 + 1)
  {
    memmove(v11, v11 + 1, v10 - (v11 + 1));
  }

  *(this + 6) = v11 + v13;
  v15 = *(this + 8);
  v14 = *(this + 9);
  if (v15 != v14)
  {
    while (*v15 != v12)
    {
      v15 += 8;
      if (v15 == v14)
      {
        v15 = *(this + 9);
        break;
      }
    }
  }

  v16 = v14 - (v15 + 8);
  if (v14 != v15 + 8)
  {
    memmove(v15, v15 + 8, v14 - (v15 + 8));
  }

  *(this + 9) = &v15[v16];
  WeakRetained = objc_loadWeakRetained(this + 24);
  v18 = [WeakRetained mutObstacles];
  [v18 removeObject:*(a2 + 8)];

  v19 = *(this + 11);
  v20 = *(this + 12);
  if (v19 != v20)
  {
    while (*v19 != *(v12 + 64))
    {
      if (++v19 == v20)
      {
        goto LABEL_28;
      }
    }
  }

  if (v19 == v20)
  {
LABEL_28:
    GKCObstacleGraph::removeObstacle();
  }

  v21 = *v19;
  *v19 = 0;
  v22 = *(v20 - 1);
  *(v20 - 1) = 0;
  v23 = *v19;
  *v19 = v22;

  v24 = *(v20 - 1);
  *(v20 - 1) = v21;

  v25 = *(this + 12);
  *(this + 12) = v25 - 8;
  v26 = *(this + 1);
  v27 = *(this + 2);
  if (v27 != v26)
  {
    v28 = 0;
    v29 = 1;
    v30 = MEMORY[0x277CBEBF8];
    do
    {
      v31 = v28 + 1;
      v32 = (v27 - v26) >> 3;
      if (v32 > v28 + 1)
      {
        v33 = v29;
        do
        {
          GKCObstacleGraph::connectNodeToNodeUsingObstacles(this, *(v26 + 8 * v28), *(v26 + 8 * v33++), v30);
          v26 = *(this + 1);
          v27 = *(this + 2);
          v32 = (v27 - v26) >> 3;
        }

        while (v32 > v33);
      }

      ++v29;
      ++v28;
    }

    while (v32 > v31);
  }
}

void GKCObstacleGraph::restoreObstacleNodeConnections(GKCObstacleGraph *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v2 != v1)
  {
    v4 = 0;
    v5 = 1;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      v7 = v4 + 1;
      v8 = (v2 - v1) >> 3;
      if (v8 > v4 + 1)
      {
        v9 = v5;
        do
        {
          GKCObstacleGraph::connectNodeToNodeUsingObstacles(this, *(v1 + 8 * v4), *(v1 + 8 * v9++), v6);
          v1 = *(this + 1);
          v2 = *(this + 2);
          v8 = (v2 - v1) >> 3;
        }

        while (v8 > v9);
      }

      ++v5;
      ++v4;
    }

    while (v8 > v7);
  }
}

void GKCObstacleGraph::removeAllObstacles(GKCObstacleGraph *this)
{
  v1 = *(this + 6) - *(this + 5);
  if ((v1 >> 3) >= 1)
  {
    v3 = ((v1 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      GKCObstacleGraph::removeObstacle(this, *(*(this + 5) + 8 * v3));
      v4 = v3-- + 1;
    }

    while (v4 > 1);
  }
}

id GKCObstacleGraph::nodesForObstacle(GKCObstacleGraph *this, GKCPolygonObstacle *a2)
{
  v4 = [MEMORY[0x277CBEB18] array];
  v6 = *(this + 1);
  v5 = *(this + 2);
  while (v6 != v5)
  {
    if (*(*v6 + 32) == a2)
    {
      WeakRetained = objc_loadWeakRetained((*v6 + 72));
      [v4 addObject:WeakRetained];

      v5 = *(this + 2);
    }

    v6 += 8;
  }

  return v4;
}

id GKCObstacleGraph::extrudeObstacle(float32_t *this, GKCPolygonObstacle *a2)
{
  v4 = GKCPolygonObstacle::extrudeObstacle(a2, a2, this[28]);
  v5 = [v4 cPolygonObstacle];
  v6 = *(this + 19);
  if (!v6)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = v6[4];
      if (v8 <= a2)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    if (v8 >= a2)
    {
      break;
    }

    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v7[5] = v5;
  v9 = [v4 cPolygonObstacle];
  v10 = *(this + 22);
  if (!v10)
  {
LABEL_14:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v11 = v10;
      v12 = v10[4];
      if (v9 >= v12)
      {
        break;
      }

      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_14;
      }
    }

    if (v12 >= v9)
    {
      break;
    }

    v10 = v11[1];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11[5] = a2;

  return v4;
}

void GKCObstacleGraph::lockConnectionFromNode(GKCObstacleGraph *this, GKCGraphNode2D *a2, GKCGraphNode2D *a3)
{
  v5 = *(this + 15);
  v4 = *(this + 16);
  v3 = this + 120;
  v6 = v4 - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = (v5 + 8);
    while (*(v8 - 1) != a2 || *v8 != a3)
    {
      v8 += 2;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    *&v10 = a2;
    *(&v10 + 1) = a3;
    std::vector<GKConnection>::push_back[abi:ne200100](v3, &v10);
  }
}

void std::vector<GKConnection>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t GKCObstacleGraph::unlockConnectionFromNode(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 120);
  v3 = *(result + 128);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v4 + v5) == a2 && *(v4 + v5 + 8) == a3)
      {
        *(v4 + v5) = *(v3 - 16);
        v4 = *(result + 120);
        v3 = *(result + 128) - 16;
        *(result + 128) = v3;
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < (v3 - v4) >> 4);
  }

  return result;
}

void std::vector<GKCGridGraphNode *>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_2389B74E4(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v2, 0x20C40A4A59CD2);

  _Unwind_Resume(a1);
}

void sub_2389B750C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2389B75C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2389B796C(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void GKCDecisionTree::decode(GKCDecisionTree *this, NSArray *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a2;
  v2 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v2)
  {
    v28 = *v31;
    v25 = xmmword_2389FBB70;
    do
    {
      v29 = v2;
      for (i = 0; i != v29; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v4 = [*(*(&v30 + 1) + 8 * i) objectForKeyedSubscript:{@"branch", v25}];
        v5 = v4 == 0;

        if (!v5)
        {
          operator new();
        }

        v6 = [(NSArray *)obj firstObject];
        v7 = [v6 objectForKeyedSubscript:@"attribute"];
        v8 = *(this->var0 + 6);
        *(this->var0 + 6) = v7;

        v9 = [v6 objectForKeyedSubscript:@"randomDistribution"];
        v10 = v9 == 0;

        if (!v10)
        {
          v11 = [v6 objectForKeyedSubscript:@"randomDistribution"];
          v12 = [v11 objectAtIndexedSubscript:0];

          v13 = [v6 objectForKeyedSubscript:@"randomDistribution"];
          v14 = [v13 objectAtIndexedSubscript:1];

          v15 = [v6 objectForKeyedSubscript:@"randomDistribution"];
          v16 = [v15 objectAtIndexedSubscript:2];

          v17 = -[GKRandomDistribution initWithRandomSource:lowestValue:highestValue:]([GKRandomDistribution alloc], "initWithRandomSource:lowestValue:highestValue:", v16, [v12 integerValue], objc_msgSend(v14, "integerValue"));
          v18 = *(this->var0 + 8);
          *(this->var0 + 8) = v17;
        }

        v19 = [v6 objectForKeyedSubscript:@"depth"];
        v20 = [v19 integerValue];

        v21 = v35[0];
        if (!v35[0])
        {
LABEL_17:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v22 = v21;
            v23 = v21[4];
            if (v20 >= v23)
            {
              break;
            }

            v21 = *v22;
            if (!*v22)
            {
              goto LABEL_17;
            }
          }

          if (v23 >= v20)
          {
            break;
          }

          v21 = v22[1];
          if (!v21)
          {
            goto LABEL_17;
          }
        }

        v22[5] = this->var0;
      }

      v2 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v2);
  }

  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(&v34, v35[0]);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2389B80C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, void *a27)
{
  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(&a26, a27);

  _Unwind_Resume(a1);
}

NSArray *GKCDecisionTree::encodeWithCoder(GKCDecisionTree *this, GKCDecisionNode *a2, NSArray *a3, uint64_t a4, NSMutableDictionary *a5)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v31 = a5;
  if (v9)
  {
    v11 = *a2;
    v10 = *(a2 + 1);
    if (*a2 == v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    var0 = this->var0;
    v13 = MEMORY[0x277CBEB38];
    v14 = GKCDecisionNode::nodeData(this->var0, 0);
    v15 = [v13 dictionaryWithDictionary:v14];

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v15 setObject:v16 forKeyedSubscript:@"depth"];

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)v15 setObject:v17 forKeyedSubscript:@"children"];

    v32[0] = v15;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v31 = v15;
    v11 = *var0;
    v10 = *(var0 + 1);
    if (*var0 == v10)
    {
      goto LABEL_9;
    }
  }

  do
  {
    v18 = *(v11 + 8);
    if (v18)
    {
      v19 = MEMORY[0x277CBEB38];
      v20 = GKCDecisionNode::nodeData(v18, *v11);
      v21 = [v19 dictionaryWithDictionary:v20];

      v22 = [MEMORY[0x277CCABB0] numberWithInteger:a4 + 1];
      [(NSMutableDictionary *)v21 setObject:v22 forKeyedSubscript:@"depth"];

      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)v21 setObject:v23 forKeyedSubscript:@"children"];

      v24 = [(NSMutableDictionary *)v31 objectForKeyedSubscript:@"children"];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v9, "count")}];
      [v24 addObject:v25];

      v26 = *(v11 + 8);
      v27 = [(NSArray *)v9 arrayByAddingObject:v21];
      v28 = GKCDecisionTree::encodeWithCoder(this, v26, v27, a4 + 1, v21);

      v9 = v28;
    }

    v11 += 16;
  }

  while (v11 != v10);
LABEL_9:

  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_2389B86E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = GKDecisionTree;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void GKCDecisionTree::cartTreeGrowth(GKCDecisionTree *this, NSArray *a2, NSArray *a3, GKCDecisionNode *a4, unint64_t a5, unint64_t a6)
{
  v8 = a2;
  v56 = a3;
  v54 = v8;
  v9 = [(NSArray *)v8 count];
  v10 = GKCDecisionTree::giniImpurity(this, v8);
  v11 = v9;
  *(a4 + 5) = v9;
  if (v10 < 0.0)
  {
    goto LABEL_77;
  }

  if (v10 != 0.0)
  {
    v74[0] = 0;
    v74[1] = 0;
    v73 = v74;
    v53 = GKCDecisionTree::getAttributeCounts(this, v56, v8);
    v16 = 0;
    v57 = this;
    obj = 0;
    for (i = 1.0; ; i = v25)
    {
      if ([(NSArray *)v56 count]<= v16)
      {
        if (i > 0.0 && [(NSArray *)v56 count]< 2 || (*(a4 + 4) <= a5 ? (v40 = v11 < a6) : (v40 = 1), v40))
        {
          GKCDecisionTree::splitByAttribute(this, v54, [(NSArray *)v56 count], &v70);
          v41 = v70;
          if (v70 != &v71)
          {
            v42 = 0;
            do
            {
              if (v42 < [v41[5] count])
              {
                objc_storeStrong(a4 + 6, v41[4]);
                v42 = [v41[5] count];
              }

              v43 = v41[1];
              if (v43)
              {
                do
                {
                  v44 = v43;
                  v43 = *v43;
                }

                while (v43);
              }

              else
              {
                do
                {
                  v44 = v41[2];
                  v30 = *v44 == v41;
                  v41 = v44;
                }

                while (!v30);
              }

              v41 = v44;
            }

            while (v44 != &v71);
          }

          v45 = v71;
          v46 = &v70;
        }

        else
        {
          objc_storeStrong(a4 + 6, obj);
          v60[0] = 0;
          v60[1] = 0;
          v59 = v60;
          v47 = v73;
          if (v73 != v74)
          {
            do
            {
              std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_hint_unique_key_args<objc_object * {__strong},std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>(&v59, v60, v47 + 4);
              v48 = v47[1];
              if (v48)
              {
                do
                {
                  v49 = v48;
                  v48 = *v48;
                }

                while (v48);
              }

              else
              {
                do
                {
                  v49 = v47[2];
                  v30 = *v49 == v47;
                  v47 = v49;
                }

                while (!v30);
              }

              v47 = v49;
            }

            while (v49 != v74);
          }

          GKCDecisionTree::splitOnIndex(this, obj, v56, &v59);
          v45 = v60[0];
          v46 = &v59;
        }

        std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v46, v45);

        std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v73, v74[0]);
        goto LABEL_77;
      }

      v18 = [v53 objectAtIndexedSubscript:v16];
      if ([v18 integerValue] <= 2)
      {

LABEL_26:
        v55 = v16;
        GKCDecisionTree::binarySplitByAttributeValue(this, v54, v16, &v70);
        v31 = v70;
        v32 = v71;
        v25 = i;
        if (v70 == v71)
        {
          goto LABEL_40;
        }

        do
        {
          v62[0] = 0;
          v62[1] = 0;
          v61 = v62;
          if (*v31 != (v31 + 1))
          {
            operator new();
          }

          this = v57;
          std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v61, v62[0]);
          if (v25 > 0.0)
          {
            v33 = [(NSArray *)v56 objectAtIndexedSubscript:v55];

            obj = v33;
            if (&v73 != v31)
            {
              std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__tree_node<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,void *> *,long>>(&v73, *v31, v31 + 1);
            }

            v25 = 0.0;
          }

          v31 += 3;
        }

        while (v31 != v32);
        v31 = v70;
        v32 = v71;
        if (v70 == v71)
        {
LABEL_40:
          if (!v31)
          {
LABEL_8:
            v16 = v55;
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy((v32 - 3), *(v32 - 2));
            v32 -= 3;
          }

          while (v32 != v31);
          v71 = v31;
          v32 = v31;
          v31 = v70;
          if (!v70)
          {
            goto LABEL_8;
          }
        }

        v34 = v31;
        if (v32 != v31)
        {
          do
          {
            std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy((v32 - 3), *(v32 - 2));
            v32 -= 3;
          }

          while (v32 != v31);
          v34 = v70;
        }

        v71 = v31;
        operator delete(v34);
        goto LABEL_8;
      }

      v19 = [(NSArray *)v54 firstObject];
      v20 = [v19 objectAtIndexedSubscript:v16];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_26;
      }

      GKCDecisionTree::multiwaySplitByAttributeValue(this, v54, v16, &v70);
      v67[0] = 0;
      v67[1] = 0;
      v66 = v67;
      v22 = v70;
      if (v70 != &v71)
      {
        do
        {
          std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_hint_unique_key_args<objc_object * {__strong},std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>(&v66, v67, v22 + 4);
          v28 = v22[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v22[2];
              v30 = *v29 == v22;
              v22 = v29;
            }

            while (!v30);
          }

          v22 = v29;
        }

        while (v29 != &v71);
      }

      GKCDecisionTree::continuousGiniSplit(this, &v66, &v68);
      std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v66, v67[0]);
      [v69 floatValue];
      v24 = v23;
      GKCDecisionTree::splitOnValueOfAttribute(this, v54, v68, v16, &v63);
      std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v70, v71);
      v70 = v63;
      v71 = v64;
      v72 = v65;
      if (v65)
      {
        v64[2] = &v71;
        v63 = &v64;
        v64 = 0;
        v65 = 0;
        v25 = v24;
        std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v63, 0);
        if (i > v25)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v70 = &v71;
        v25 = v24;
        std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v63, v64);
        if (i > v25)
        {
LABEL_16:
          v26 = [(NSArray *)v56 objectAtIndexedSubscript:v16];

          obj = v26;
          std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__tree_node<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,void *> *,long>>(&v73, v70, &v71);
          v27 = v70;
          if (v70 != &v71)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }
      }

      v25 = i;
      v27 = v70;
      if (v70 != &v71)
      {
        do
        {
LABEL_48:
          v37 = v27[1];
          v38 = v27;
          if (v37)
          {
            do
            {
              v39 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v39 = v38[2];
              v30 = *v39 == v38;
              v38 = v39;
            }

            while (!v30);
          }

          if (v70 == v27)
          {
            v70 = v39;
          }

          --v72;
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v71, v27);

          operator delete(v27);
          v27 = v39;
        }

        while (v39 != &v71);
      }

LABEL_46:
      v35 = v68;
      v68 = 0;

      v36 = v69;
      v69 = 0;

      std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v70, v71);
LABEL_9:
      ++v16;
    }
  }

  v12 = [(NSArray *)v8 firstObject];
  v13 = [v12 lastObject];

  if (v13)
  {
    v14 = [v12 lastObject];
    v15 = *(a4 + 6);
    *(a4 + 6) = v14;
  }

LABEL_77:
}

void sub_2389B9630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, char a24, void *a25)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a24, a25);

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v25 - 144, *(v25 - 136));
  _Unwind_Resume(a1);
}

id GKCDecisionTree::findActionForAnswers(uint64_t **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = *a1 + 1;
  if (*v5 == **a1)
  {
    goto LABEL_19;
  }

  while (2)
  {
    v6 = v4[8];
    if (v6)
    {
      v7 = [v6 nextInt];
    }

    else
    {
      if (!v3)
      {
        goto LABEL_19;
      }

      v7 = 0;
      if (![v3 count])
      {
        goto LABEL_19;
      }
    }

    v8 = *v4;
    v9 = *v5;
    if (*v4 == *v5)
    {
LABEL_19:
      v18 = 0;
      goto LABEL_20;
    }

    while (1)
    {
      v11 = *v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*v8 allowEvaluation];
        v12 = *v8;
        v13 = [v3 objectForKeyedSubscript:v4[6]];
        v14 = [v12 evaluateWithObject:v13];
        goto LABEL_8;
      }

      if (v4[8])
      {
        break;
      }

      v17 = *v8;
      v13 = [v3 objectForKeyedSubscript:v4[6]];
      v14 = [v17 isEqual:v13];
LABEL_8:
      v10 = v14;

      if (v10)
      {
        goto LABEL_17;
      }

LABEL_9:
      v8 += 16;
      if (v8 == v9)
      {
        goto LABEL_19;
      }
    }

    v15 = [*v8 integerValue];
    v16 = v7 <= v15;
    v7 -= v15;
    if (!v16)
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = *(v8 + 8);
    if (v4[1] != *v4)
    {
      v5 = v4 + 1;
      continue;
    }

    break;
  }

  v18 = v4[6];
LABEL_20:

  return v18;
}

__CFString *GKCDecisionTree::printTree(GKCDecisionTree *this, GKCDecisionNode *a2, NSString *a3, NSString *a4)
{
  v7 = a3;
  p_isa = a4;
  if (a2)
  {
    if ([(NSString *)v7 isEqualToString:@"\t"])
    {
      v9 = *(a2 + 4);
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@(depth:%lu, ex:%lu)\n", *(a2 + 6), v9, *(a2 + 5)];

      p_isa = v10;
    }

    v12 = *a2;
    v11 = *(a2 + 1);
    if (*a2 == v11)
    {
      v17 = p_isa;
    }

    else
    {
      do
      {
        v13 = v12[1];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\t", v7];
        if (v13)
        {
          v15 = *v12;
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@, %@(depth:%lu, ex:%lu)\n", p_isa, v7, *v12, *(v12[1] + 48), *(v12[1] + 32), *(v12[1] + 40)];
          v17 = GKCDecisionTree::printTree(this, v13, v14, v16);
        }

        else
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@\n", p_isa, v7, *v12];
          v17 = &stru_284B50D90;
        }

        v12 += 2;
        p_isa = &v17->isa;
      }

      while (v12 != v11);
    }

    p_isa = v17;
    v18 = p_isa;
  }

  else
  {
    v18 = &stru_284B50D90;
  }

  return v18;
}

id GKCDecisionNode::nodeData(GKCDecisionNode *this, objc_object *a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v4 setObject:*(this + 6) forKeyedSubscript:@"attribute"];
  v5 = *(this + 8);
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "lowestValue")}];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(this + 8), "highestValue", v6)}];
    v8 = *(this + 9);
    v12[1] = v7;
    v12[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    [v4 setObject:v9 forKeyedSubscript:@"randomDistribution"];
  }

  [v4 setObject:v3 forKeyedSubscript:@"branch"];
  [v4 setObject:*(this + 7) forKeyedSubscript:@"branchValue"];

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

void GKCDecisionNode::~GKCDecisionNode(GKCDecisionNode *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;

  v3 = *(this + 8);
  *(this + 8) = 0;

  v4 = *(this + 9);
  *(this + 9) = 0;

  v5 = *(this + 10);
  *(this + 10) = 0;

  *(this + 3) = 0;
  v6 = *this;
  v7 = *(this + 1);
  if (*this != v7)
  {
    do
    {
      v8 = *(v6 + 1);
      if (v8)
      {
        GKCDecisionNode::~GKCDecisionNode(v8);
        MEMORY[0x23EE6C500]();
      }

      v6 += 16;
    }

    while (v6 != v7);
    v6 = *this;
    v7 = *(this + 1);
  }

  if (v6 != v7)
  {
    do
    {
      v9 = *(v7 - 2);
      v7 -= 16;
    }

    while (v7 != v6);
    *(this + 1) = v6;
  }

  v10 = *this;
  if (*this)
  {
    v11 = *(this + 1);
    v12 = *this;
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 2);
        v11 -= 16;
      }

      while (v11 != v10);
      v12 = *this;
    }

    *(this + 1) = v10;
    operator delete(v12);
  }
}

double GKCDecisionTree::giniImpurity(GKCDecisionTree *this, NSArray *a2)
{
  v3 = a2;
  v4 = [(NSArray *)v3 firstObject];
  GKCDecisionTree::splitByAttribute(this, v3, [v4 count] - 1, &v14);

  v5 = [(NSArray *)v3 count];
  v6 = 0.0;
  if (v5 && v15[1] != 1)
  {
    v7 = v14;
    if (v14 == v15)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 1.0;
      v8 = 1.0 / v5;
      do
      {
        v9 = [v7[5] count];
        v10 = v7[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v6 = v6 - v9 * v8 * (v9 * v8);
        v7 = v11;
      }

      while (v11 != v15);
    }
  }

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v14, v15[0]);

  return v6;
}

void sub_2389BA6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a10, a11);

  _Unwind_Resume(a1);
}

id GKCDecisionTree::getAttributeCounts(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = 0;
  v8 = MEMORY[0x277CBEC38];
  while ([v4 count] > v7)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
    for (i = 0; [v5 count] > i; ++i)
    {
      v11 = [v5 objectAtIndexedSubscript:i];
      v12 = [v11 objectAtIndexedSubscript:v7];

      v13 = [v9 objectForKeyedSubscript:v12];

      if (!v13)
      {
        [v9 setObject:v8 forKeyedSubscript:v12];
      }
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    [v6 setObject:v14 atIndexedSubscript:v7];

    ++v7;
  }

  return v6;
}

void GKCDecisionTree::multiwaySplitByAttributeValue(GKCDecisionTree *this@<X0>, NSArray *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = a2;
  a4[1] = 0;
  v6 = a4 + 1;
  a4[2] = 0;
  *a4 = a4 + 1;
  v24 = objc_opt_new();
  for (i = 0; [(NSArray *)v25 count]> i; ++i)
  {
    v8 = [(NSArray *)v25 objectAtIndexedSubscript:i];
    v9 = [v8 objectAtIndexedSubscript:a3];

    v10 = [v24 objectForKey:v9];

    if (v10)
    {
      v11 = [v24 objectForKey:v9];
      v12 = [(NSArray *)v25 objectAtIndexedSubscript:i];
      [v11 addObject:v12];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x277CBEB18]);
      v11 = [(NSArray *)v25 objectAtIndexedSubscript:i];
      v12 = [v13 initWithObjects:{v11, 0}];
      [v24 setObject:v12 forKey:v9];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v24;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v26 = *v28;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v27 + 1) + 8 * j);
        v18 = [v14 objectForKey:v17];
        v19 = *v6;
        if (!*v6)
        {
LABEL_18:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v20 = v19;
            v21 = v19[4];
            if (v17 >= v21)
            {
              break;
            }

            v19 = *v20;
            if (!*v20)
            {
              goto LABEL_18;
            }
          }

          if (v21 >= v17)
          {
            break;
          }

          v19 = v20[1];
          if (!v19)
          {
            goto LABEL_18;
          }
        }

        v22 = v20[5];
        v20[5] = v18;
      }

      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2389BAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v11, *(v11 + 8));

  _Unwind_Resume(a1);
}

void GKCDecisionTree::continuousGiniSplit(GKCDecisionTree *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v212[0] = 0;
  v212[1] = 0;
  v211 = v212;
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_hint_unique_key_args<objc_object * {__strong},std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>(&v211, v212, v6 + 4);
      v13 = v6[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v6[2];
          v15 = *v14 == v6;
          v6 = v14;
        }

        while (!v15);
      }

      v6 = v14;
    }

    while (v14 != v5);
  }

  v7 = GKCDecisionTree::sortByAttributeWithAction(a1, &v211);
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v211, v212[0]);
  v210[0] = 0;
  v210[1] = 0;
  v209 = v210;
  v202 = v7;
  v8 = [(NSArray *)v7 firstObject];
  GKCDecisionTree::splitByAttribute(a1, v7, [v8 count] - 1, &v206);

  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v203 = [v9 initWithCapacity:v208];
  v205[0] = 0;
  v205[1] = 0;
  v204 = v205;
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = [v10 initWithCapacity:v208];
  v12 = v205[0];
LABEL_11:
  if (!v12)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    v16 = v12;
    v17 = v12[4];
    if (v17 > @"<=")
    {
      v12 = *v16;
      goto LABEL_11;
    }

    if (v17 >= @"<=")
    {
      break;
    }

    v12 = v16[1];
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  v18 = v16[5];
  v16[5] = v11;

  v19 = objc_alloc(MEMORY[0x277CBEB18]);
  v20 = [v19 initWithCapacity:v208];
  v21 = v205[0];
LABEL_18:
  if (!v21)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v22 = v21;
    v23 = v21[4];
    if (v23 > @">")
    {
      v21 = *v22;
      goto LABEL_18;
    }

    if (v23 >= @">")
    {
      break;
    }

    v21 = v22[1];
    if (!v21)
    {
      goto LABEL_22;
    }
  }

  v24 = v22[5];
  v22[5] = v20;

  for (i = 0; [(NSArray *)v7 count]>= i; ++i)
  {
    if (i)
    {
      if ([(NSArray *)v7 count]== i)
      {
        v26 = [(NSArray *)v7 objectAtIndexedSubscript:i - 2];
        v200 = [v26 firstObject];

        v27 = [(NSArray *)v7 objectAtIndexedSubscript:i - 1];
        v28 = [v27 firstObject];

        v199 = v28;
        [v28 floatValue];
        v30 = v29;
        [v200 floatValue];
        v32 = v31;
        v33 = MEMORY[0x277CCABB0];
        [v199 floatValue];
        *&v35 = v34 + ((v30 - v32) * 0.5);
        v36 = [v33 numberWithFloat:v35];
        v37 = v36;
        v38 = v206;
        if (v206 == &v207)
        {
          goto LABEL_105;
        }

        v198 = v36;
        v39 = 0;
        do
        {
          v40 = v38[4];
          v41 = [(NSArray *)v7 objectAtIndexedSubscript:i - 1];
          v42 = [v41 lastObject];
          LODWORD(v40) = [v40 isEqual:v42];

          if (v40)
          {
            v43 = MEMORY[0x277CCABB0];
            v44 = [v203 objectAtIndexedSubscript:v39];
            v45 = [v43 numberWithInteger:{objc_msgSend(v44, "integerValue") + 1}];
            [v203 setObject:v45 atIndexedSubscript:v39];
          }

          else
          {
            v44 = [v203 objectAtIndexedSubscript:v39];
            [v203 setObject:v44 atIndexedSubscript:v39];
          }

          v46 = [v203 objectAtIndexedSubscript:v39];
          v47 = v205[0];
LABEL_36:
          if (!v47)
          {
LABEL_40:
            operator new();
          }

          while (1)
          {
            v48 = v47;
            v49 = v47[4];
            if (v49 > @"<=")
            {
              v47 = *v48;
              goto LABEL_36;
            }

            if (v49 >= @"<=")
            {
              break;
            }

            v47 = v48[1];
            if (!v47)
            {
              goto LABEL_40;
            }
          }

          [v48[5] setObject:v46 atIndexedSubscript:v39];

          v50 = MEMORY[0x277CCABB0];
          v51 = [v38[5] count];
          v52 = [v203 objectAtIndexedSubscript:v39];
          v53 = [v50 numberWithUnsignedInteger:{v51 - objc_msgSend(v52, "integerValue")}];
          v54 = v205[0];
LABEL_43:
          if (!v54)
          {
LABEL_47:
            operator new();
          }

          while (1)
          {
            v55 = v54;
            v56 = v54[4];
            if (v56 > @">")
            {
              v54 = *v55;
              goto LABEL_43;
            }

            if (v56 >= @">")
            {
              break;
            }

            v54 = v55[1];
            if (!v54)
            {
              goto LABEL_47;
            }
          }

          [v55[5] setObject:v53 atIndexedSubscript:v39];

          v57 = v38[1];
          if (v57)
          {
            do
            {
              v58 = v57;
              v57 = *v57;
            }

            while (v57);
          }

          else
          {
            do
            {
              v58 = v38[2];
              v15 = *v58 == v38;
              v38 = v58;
            }

            while (!v15);
          }

          ++v39;
          v38 = v58;
        }

        while (v58 != &v207);
      }

      else
      {
        v86 = [(NSArray *)v7 objectAtIndexedSubscript:i - 1];
        v200 = [v86 firstObject];

        v87 = [(NSArray *)v7 objectAtIndexedSubscript:i];
        v88 = [v87 firstObject];

        v199 = v88;
        [v88 floatValue];
        v90 = v89;
        [v200 floatValue];
        v92 = v91;
        v93 = MEMORY[0x277CCABB0];
        [v199 floatValue];
        *&v95 = v94 + ((v92 - v90) * 0.5);
        v96 = [v93 numberWithFloat:v95];
        v37 = v96;
        v97 = v206;
        if (v206 == &v207)
        {
          goto LABEL_105;
        }

        v198 = v96;
        v98 = 0;
        do
        {
          v99 = v97[4];
          v100 = [(NSArray *)v7 objectAtIndexedSubscript:i - 1];
          v101 = [v100 lastObject];
          LODWORD(v99) = [v99 isEqual:v101];

          if (v99)
          {
            v102 = MEMORY[0x277CCABB0];
            v103 = [v203 objectAtIndexedSubscript:v98];
            v104 = [v102 numberWithInteger:{objc_msgSend(v103, "integerValue") + 1}];
            [v203 setObject:v104 atIndexedSubscript:v98];
          }

          else
          {
            v103 = [v203 objectAtIndexedSubscript:v98];
            [v203 setObject:v103 atIndexedSubscript:v98];
          }

          v105 = [v203 objectAtIndexedSubscript:v98];
          v106 = v205[0];
LABEL_85:
          if (!v106)
          {
LABEL_89:
            operator new();
          }

          while (1)
          {
            v107 = v106;
            v108 = v106[4];
            if (v108 > @"<=")
            {
              v106 = *v107;
              goto LABEL_85;
            }

            if (v108 >= @"<=")
            {
              break;
            }

            v106 = v107[1];
            if (!v106)
            {
              goto LABEL_89;
            }
          }

          [v107[5] setObject:v105 atIndexedSubscript:v98];

          v109 = MEMORY[0x277CCABB0];
          v110 = [v97[5] count];
          v111 = [v203 objectAtIndexedSubscript:v98];
          v112 = [v109 numberWithUnsignedInteger:{v110 - objc_msgSend(v111, "integerValue")}];
          v113 = v205[0];
LABEL_92:
          if (!v113)
          {
LABEL_96:
            operator new();
          }

          while (1)
          {
            v114 = v113;
            v115 = v113[4];
            if (v115 > @">")
            {
              v113 = *v114;
              goto LABEL_92;
            }

            if (v115 >= @">")
            {
              break;
            }

            v113 = v114[1];
            if (!v113)
            {
              goto LABEL_96;
            }
          }

          [v114[5] setObject:v112 atIndexedSubscript:v98];

          v116 = v97[1];
          if (v116)
          {
            do
            {
              v117 = v116;
              v116 = *v116;
            }

            while (v116);
          }

          else
          {
            do
            {
              v117 = v97[2];
              v15 = *v117 == v97;
              v97 = v117;
            }

            while (!v15);
          }

          ++v98;
          v97 = v117;
        }

        while (v117 != &v207);
      }

      v37 = v198;
    }

    else
    {
      v59 = [(NSArray *)v7 objectAtIndexedSubscript:0];
      v200 = [v59 firstObject];

      v60 = [(NSArray *)v7 objectAtIndexedSubscript:1];
      v61 = [v60 firstObject];

      v199 = v61;
      [v61 floatValue];
      v63 = v62;
      [v200 floatValue];
      v65 = v64;
      v66 = MEMORY[0x277CCABB0];
      [v200 floatValue];
      *&v68 = v67 + ((v65 - v63) * 0.5);
      v69 = [v66 numberWithFloat:v68];
      v37 = v69;
      v70 = v206;
      if (v206 != &v207)
      {
        v71 = v69;
        v72 = 0;
        do
        {
          [v203 setObject:&unk_284B587B0 atIndexedSubscript:v72];
          v73 = [v203 objectAtIndexedSubscript:v72];
          v74 = v205[0];
LABEL_59:
          if (!v74)
          {
LABEL_63:
            operator new();
          }

          while (1)
          {
            v75 = v74;
            v76 = v74[4];
            if (v76 > @"<=")
            {
              v74 = *v75;
              goto LABEL_59;
            }

            if (v76 >= @"<=")
            {
              break;
            }

            v74 = v75[1];
            if (!v74)
            {
              goto LABEL_63;
            }
          }

          [v75[5] setObject:v73 atIndexedSubscript:v72];

          v77 = MEMORY[0x277CCABB0];
          v78 = [v70[5] count];
          v79 = [v203 objectAtIndexedSubscript:v72];
          v80 = [v77 numberWithUnsignedInteger:{v78 - objc_msgSend(v79, "integerValue")}];
          v81 = v205[0];
LABEL_66:
          if (!v81)
          {
LABEL_70:
            operator new();
          }

          while (1)
          {
            v82 = v81;
            v83 = v81[4];
            if (v83 > @">")
            {
              v81 = *v82;
              goto LABEL_66;
            }

            if (v83 >= @">")
            {
              break;
            }

            v81 = v82[1];
            if (!v81)
            {
              goto LABEL_70;
            }
          }

          [v82[5] setObject:v80 atIndexedSubscript:v72];

          v84 = v70[1];
          if (v84)
          {
            do
            {
              v85 = v84;
              v84 = *v84;
            }

            while (v84);
          }

          else
          {
            do
            {
              v85 = v70[2];
              v15 = *v85 == v70;
              v70 = v85;
            }

            while (!v15);
          }

          ++v72;
          v70 = v85;
        }

        while (v85 != &v207);
        v37 = v71;
      }
    }

LABEL_105:

    v119 = v37;
    if (i)
    {
      if ([(NSArray *)v7 count]== i)
      {
        v121 = 1.0;
        if (!v208)
        {
          goto LABEL_174;
        }

        v122 = 0;
        v123 = 0.0;
        while (1)
        {
          for (j = v205[0]; ; j = *v125)
          {
            if (!j)
            {
LABEL_115:
              operator new();
            }

LABEL_112:
            v125 = j;
            v126 = j[4];
            if (v126 <= @"<=")
            {
              break;
            }
          }

          if (v126 < @"<=")
          {
            j = v125[1];
            if (!j)
            {
              goto LABEL_115;
            }

            goto LABEL_112;
          }

          v127 = [v125[5] objectAtIndexedSubscript:v122];
          [v127 floatValue];
          v123 = v128 + v123;

          if (v208 <= ++v122)
          {
            if (v208)
            {
              v163 = 0;
              v121 = 1.0;
              v164 = 1.0 / v123;
              do
              {
                for (k = v205[0]; ; k = *v166)
                {
                  if (!k)
                  {
LABEL_172:
                    operator new();
                  }

LABEL_169:
                  v166 = k;
                  v167 = k[4];
                  if (v167 <= @"<=")
                  {
                    break;
                  }
                }

                if (v167 < @"<=")
                {
                  k = v166[1];
                  if (!k)
                  {
                    goto LABEL_172;
                  }

                  goto LABEL_169;
                }

                v168 = [v166[5] objectAtIndexedSubscript:v163];
                [v168 floatValue];
                v121 = v121 - ((v169 * v164) * (v169 * v164));

                ++v163;
              }

              while (v208 > v163);
            }

LABEL_174:
            *&v120 = v121;
            v159 = [MEMORY[0x277CCABB0] numberWithFloat:v120];
            for (m = v210[0]; m; m = *v161)
            {
              while (1)
              {
                v161 = m;
                v171 = m[4];
                if (v119 < v171)
                {
                  break;
                }

                if (v171 >= v119)
                {
                  goto LABEL_24;
                }

                m = v161[1];
                if (!m)
                {
                  goto LABEL_180;
                }
              }
            }

LABEL_180:
            operator new();
          }
        }
      }

      v137 = 1.0;
      if (!v208)
      {
        v139 = 0.0;
        v140 = 0.0;
        goto LABEL_200;
      }

      v138 = 0;
      v139 = 0.0;
      v140 = 0.0;
LABEL_131:
      for (n = v205[0]; ; n = *v142)
      {
        if (!n)
        {
LABEL_137:
          operator new();
        }

        while (1)
        {
          v142 = n;
          v143 = n[4];
          if (v143 > @"<=")
          {
            break;
          }

          if (v143 >= @"<=")
          {
            v144 = [v142[5] objectAtIndexedSubscript:v138];
            [v144 floatValue];
            v146 = v145;

            v147 = v205[0];
LABEL_140:
            if (!v147)
            {
LABEL_144:
              operator new();
            }

            while (1)
            {
              v148 = v147;
              v149 = v147[4];
              if (v149 > @">")
              {
                v147 = *v148;
                goto LABEL_140;
              }

              if (v149 >= @">")
              {
                break;
              }

              v147 = v148[1];
              if (!v147)
              {
                goto LABEL_144;
              }
            }

            v150 = [v148[5] objectAtIndexedSubscript:v138];
            [v150 floatValue];
            v140 = v146 + v140;
            v139 = v151 + v139;

            if (v208 <= ++v138)
            {
              if (v208)
              {
                v172 = 0;
                v173 = 1.0;
                v137 = 1.0;
                while (1)
                {
                  for (ii = v205[0]; ; ii = *v175)
                  {
                    if (!ii)
                    {
LABEL_189:
                      operator new();
                    }

LABEL_186:
                    v175 = ii;
                    v176 = ii[4];
                    if (v176 <= @"<=")
                    {
                      break;
                    }
                  }

                  if (v176 < @"<=")
                  {
                    ii = v175[1];
                    if (!ii)
                    {
                      goto LABEL_189;
                    }

                    goto LABEL_186;
                  }

                  v177 = [v175[5] objectAtIndexedSubscript:v172];
                  [v177 floatValue];
                  v179 = v178;

                  v180 = v205[0];
LABEL_192:
                  if (!v180)
                  {
LABEL_196:
                    operator new();
                  }

                  while (1)
                  {
                    v181 = v180;
                    v182 = v180[4];
                    if (v182 > @">")
                    {
                      v180 = *v181;
                      goto LABEL_192;
                    }

                    if (v182 >= @">")
                    {
                      break;
                    }

                    v180 = v181[1];
                    if (!v180)
                    {
                      goto LABEL_196;
                    }
                  }

                  v183 = [v181[5] objectAtIndexedSubscript:v172];
                  [v183 floatValue];
                  v137 = v137 - ((v179 * (1.0 / v140)) * (v179 * (1.0 / v140)));
                  v173 = v173 - ((v184 * (1.0 / v139)) * (v184 * (1.0 / v139)));

                  if (v208 <= ++v172)
                  {
                    goto LABEL_201;
                  }
                }
              }

LABEL_200:
              v173 = 1.0;
LABEL_201:
              *&v185 = ((v137 * v140) + (v173 * v139)) / [(NSArray *)v7 count];
              v159 = [MEMORY[0x277CCABB0] numberWithFloat:v185];
              for (jj = v210[0]; jj; jj = *v161)
              {
                while (1)
                {
                  v161 = jj;
                  v187 = jj[4];
                  if (v119 < v187)
                  {
                    break;
                  }

                  if (v187 >= v119)
                  {
                    goto LABEL_24;
                  }

                  jj = v161[1];
                  if (!jj)
                  {
                    goto LABEL_207;
                  }
                }
              }

LABEL_207:
              operator new();
            }

            goto LABEL_131;
          }

          n = v142[1];
          if (!n)
          {
            goto LABEL_137;
          }
        }
      }
    }

    v129 = 1.0;
    if (v208)
    {
      v130 = 0;
      v131 = 0.0;
      do
      {
        v132 = v205[0];
LABEL_122:
        if (!v132)
        {
LABEL_126:
          operator new();
        }

        while (1)
        {
          v133 = v132;
          v134 = v132[4];
          if (v134 > @">")
          {
            v132 = *v133;
            goto LABEL_122;
          }

          if (v134 >= @">")
          {
            break;
          }

          v132 = v133[1];
          if (!v132)
          {
            goto LABEL_126;
          }
        }

        v135 = [v133[5] objectAtIndexedSubscript:v130];
        [v135 floatValue];
        v131 = v136 + v131;

        ++v130;
      }

      while (v208 > v130);
      if (v208)
      {
        v152 = 0;
        v129 = 1.0;
        v153 = 1.0 / v131;
        do
        {
          v154 = v205[0];
LABEL_151:
          if (!v154)
          {
LABEL_155:
            operator new();
          }

          while (1)
          {
            v155 = v154;
            v156 = v154[4];
            if (v156 > @">")
            {
              v154 = *v155;
              goto LABEL_151;
            }

            if (v156 >= @">")
            {
              break;
            }

            v154 = v155[1];
            if (!v154)
            {
              goto LABEL_155;
            }
          }

          v157 = [v155[5] objectAtIndexedSubscript:v152];
          [v157 floatValue];
          v129 = v129 - ((v158 * v153) * (v158 * v153));

          ++v152;
        }

        while (v208 > v152);
      }
    }

    *&v118 = v129;
    v159 = [MEMORY[0x277CCABB0] numberWithFloat:v118];
    v160 = v210[0];
LABEL_159:
    if (!v160)
    {
LABEL_163:
      operator new();
    }

    while (1)
    {
      v161 = v160;
      v162 = v160[4];
      if (v119 < v162)
      {
        v160 = *v161;
        goto LABEL_159;
      }

      if (v162 >= v119)
      {
        break;
      }

      v160 = v161[1];
      if (!v160)
      {
        goto LABEL_163;
      }
    }

LABEL_24:
    v25 = v161[5];
    v161[5] = v159;
  }

  *a3 = &unk_284B587C8;
  a3[1] = &unk_284B587C8;
  v188 = v209;
  if (v209 != v210)
  {
    v189 = &unk_284B587C8;
    do
    {
      [v188[5] floatValue];
      v191 = v190;
      [v189 floatValue];
      if (v191 < v192)
      {
        v193 = v188[4];
        v194 = v188[5];
        v195 = *a3;
        *a3 = v193;

        a3[1] = v194;
        v189 = v194;
      }

      v196 = v188[1];
      if (v196)
      {
        do
        {
          v197 = v196;
          v196 = *v196;
        }

        while (v196);
      }

      else
      {
        do
        {
          v197 = v188[2];
          v15 = *v197 == v188;
          v188 = v197;
        }

        while (!v15);
      }

      v188 = v197;
    }

    while (v197 != v210);
  }

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v204, v205[0]);

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v206, v207);
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v209, v210[0]);
}