BOOL CLFamiliarRoadData::addToFamiliarityMap(CLFamiliarRoadData *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, double a5)
{
  CLFamiliarRoadData::getFamiliarityDataFor(this, *a2, *a3, a4, &v8);
  v6 = v8;
  if (!v8)
  {
    operator new();
  }

  if (*(v8 + 8) < a5)
  {
    *(v8 + 8) = a5;
  }

  if (v9)
  {
    sub_100001F6C(v9);
  }

  return v6 == 0;
}

void sub_100000E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_100001F6C(a12);
  }

  if (a14)
  {
    sub_100001F6C(a14);
  }

  _Unwind_Resume(exception_object);
}

void CLFamiliarRoadData::getFamiliarityDataFor(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v13[0] = a2;
  v13[1] = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!CLFamiliarRoadData::getFamiliarRoadDataForThisRoad(a1, v13, &v10) || (v7 = v10, v10 == v11))
  {
LABEL_5:
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
    while (1)
    {
      v8 = *v7;
      if (**v7 == *a4)
      {
        break;
      }

      v7 += 2;
      if (v7 == v11)
      {
        goto LABEL_5;
      }
    }

    v9 = v7[1];
    *a5 = v8;
    a5[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v14 = &v10;
  sub_100001D20(&v14);
}

void sub_100000F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100001D20(va);
  _Unwind_Resume(a1);
}

uint64_t *CLFamiliarRoadData::trimRoadVectorBasedOnFamiliarityIndex(uint64_t *result, uint64_t **a2)
{
  v3 = (a2 + 1);
  v2 = *a2;
  if (*a2 != (a2 + 1))
  {
    v5 = result;
    do
    {
      if (v2[6])
      {
        if (CLFamiliarRoadData::isFamiliarRoadDataAvailableForThisRoad(v5, v2 + 4))
        {
          v6 = v2[1];
          if (v6)
          {
            do
            {
              result = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              result = v2[2];
              v7 = *result == v2;
              v2 = result;
            }

            while (!v7);
          }
        }

        else
        {
          result = sub_100002308(a2, v2);
        }
      }

      else
      {
        v8 = v2[1];
        if (v8)
        {
          do
          {
            result = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            result = v2[2];
            v7 = *result == v2;
            v2 = result;
          }

          while (!v7);
        }
      }

      v2 = result;
    }

    while (result != v3);
  }

  return result;
}

uint64_t CLFamiliarRoadData::isFamiliarRoadDataAvailableForThisRoad(uint64_t a1, unint64_t *a2)
{
  v3 = sub_10000273C(a1, a2);
  if (v3 == v4)
  {
    return 0;
  }

  while (v3[4] != *a2 || v3[5] != a2[1])
  {
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v3[2];
        v7 = *v6 == v3;
        v3 = v6;
      }

      while (!v7);
    }

    v3 = v6;
    if (v6 == v4)
    {
      return 0;
    }
  }

  return 1;
}

void CLFamiliarRoadData::trimRoadVectorBasedOnFamiliarityIndex(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 != *(a2 + 8))
  {
    do
    {
      if (CLFamiliarRoadData::isFamiliarRoadDataAvailableForThisRoad(a1, *v2))
      {
        v2 += 16;
        v5 = *(a2 + 8);
      }

      else
      {
        sub_100001CB4(&v9, (v2 + 16), *(a2 + 8), v2);
        v5 = v6;
        v7 = *(a2 + 8);
        if (v7 != v6)
        {
          do
          {
            v8 = *(v7 - 8);
            if (v8)
            {
              sub_100001F6C(v8);
            }

            v7 -= 16;
          }

          while (v7 != v5);
        }

        *(a2 + 8) = v5;
      }
    }

    while (v2 != v5);
  }
}

void CLFamiliarRoadData::trimNeighborsBasedOnFamiliarityIndex(uint64_t a1, unint64_t **a2, __int128 **a3)
{
  v3 = *a2;
  if (v3)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    if (CLFamiliarRoadData::getFamiliarRoadDataForThisRoad(a1, v3, &v22))
    {
      v6 = *a3;
      v5 = a3[1];
      if (*a3 != v5)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = -v6;
          while (!*v6)
          {
            ++v6;
            v9 -= 16;
            if (v6 == v5)
            {
              goto LABEL_29;
            }
          }

          v10 = v22;
          v11 = v23;
          while (v10 != v11)
          {
            v12 = *v10;
            if (**v10 != *(*v6 + 8) || v7 && v12[1] <= v7[1])
            {
              v13 = v8;
              v12 = v7;
            }

            else
            {
              v13 = v10[1];
              if (v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v8)
              {
                sub_100001F6C(v8);
              }
            }

            v10 += 2;
            v8 = v13;
            v7 = v12;
          }

          if (v7)
          {
            ++v6;
            v5 = a3[1];
          }

          else
          {
            sub_100001CB4(&v25, (16 - v9), a3[1], -v9);
            v5 = v14;
            for (i = a3[1]; i != v5; --i)
            {
              v16 = *(i - 1);
              if (v16)
              {
                sub_100001F6C(v16);
              }
            }

            a3[1] = v5;
          }
        }

        while (v6 != v5);
LABEL_29:
        if (v7)
        {
          v17 = *a3;
          if ((v5 - *a3) >= 0x11 && v17 != v5)
          {
            do
            {
              if (*v7 == *(*v17 + 8))
              {
                ++v17;
              }

              else
              {
                sub_100001CB4(&v25, v17 + 1, v5, v17);
                v5 = v19;
                for (j = a3[1]; j != v5; --j)
                {
                  v21 = *(j - 1);
                  if (v21)
                  {
                    sub_100001F6C(v21);
                  }
                }

                a3[1] = v5;
              }
            }

            while (v17 != v5);
          }
        }

        if (v8)
        {
          sub_100001F6C(v8);
        }
      }
    }

    v26 = &v22;
    sub_100001D20(&v26);
  }
}

void sub_100001324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (v14)
  {
    sub_100001F6C(v14);
  }

  a14 = &a10;
  sub_100001D20(&a14);
  _Unwind_Resume(a1);
}

BOOL CLFamiliarRoadData::getFamiliarRoadDataForThisRoad(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v5 = sub_10000273C(a1, a2);
  if (v5 != v6)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      if (*(v7 + 4) == *a2 && *(v7 + 5) == a2[1])
      {
        sub_100001408(a3, v7 + 3);
      }

      v9 = *(v7 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v8);
  }

  return *a3 != *(a3 + 8);
}

void **sub_100001408(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100001DC0();
    }

    v10 = v5 - *result;
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

    v18[4] = result;
    if (v11)
    {
      sub_100001E68(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_100001EE4(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

BOOL CLRouteRoad::initialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = a3;
  v7 = *a2;
  if (*a2)
  {
    objc_storeStrong((a1 + 16), a3);
    v9 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(a1 + 8);
    *a1 = v9;
    *(a1 + 8) = v8;
    if (v10)
    {
      sub_100001F6C(v10);
    }
  }

  return v7 != 0;
}

void CLRouteRoad::~CLRouteRoad(CLRouteRoad *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_100001F6C(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    sub_100001F6C(v3);
  }
}

BOOL CLRouteRoad::isSameAs(void **a1, void **a2)
{
  if (*a2 && (v2 = *a1) != 0 && (v3 = **a2, *v2 == *v3))
  {
    return v2[1] == v3[1];
  }

  else
  {
    return 0;
  }
}

uint64_t CLRouteRoad::isConnectedToStartJunction(uint64_t *a1, uint64_t **a2)
{
  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if ((*(result + 116) & 1) != 0 || (~*(result + 108) & 0x7FFFFFFF) == 0 || (*(result + 117) & 1) != 0 || (~*(result + 112) & 0x7FFFFFFF) == 0 || *(*v3 + 116) == 1)
    {

      return CLMapRoad::isConnectedToStart(result, v3);
    }

    else
    {
      v6 = *(*v3 + 108);
      result = CLMapRoad::isConnectedToStart(result, v3);
      if (result && (v6 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        v7 = *(**a2 + 108);
        return *(*a1 + 108) == v7 || *(*a1 + 112) == v7;
      }
    }
  }

  return result;
}

uint64_t CLRouteRoad::isConnectedToStopJunction(uint64_t *a1, uint64_t **a2)
{
  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if ((*(result + 116) & 1) != 0 || (~*(result + 108) & 0x7FFFFFFF) == 0 || (*(result + 117) & 1) != 0 || (~*(result + 112) & 0x7FFFFFFF) == 0 || *(*v3 + 117) == 1)
    {

      return CLMapRoad::isConnectedToStop(result, v3);
    }

    else
    {
      v6 = *(*v3 + 112);
      result = CLMapRoad::isConnectedToStop(result, v3);
      if (result && (v6 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        v7 = *(**a2 + 112);
        return *(*a1 + 108) == v7 || *(*a1 + 112) == v7;
      }
    }
  }

  return result;
}

uint64_t CLRouteRoad::startJunctionIsConnectedTo(uint64_t *a1, uint64_t **a2)
{
  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if (*(result + 116) & 1) != 0 || (~*(result + 108) & 0x7FFFFFFF) == 0 || (v6 = *v3, (*(*v3 + 116)) || (~*(v6 + 108) & 0x7FFFFFFF) == 0 || *(v6 + 117) == 1)
    {

      return CLMapRoad::startIsConnectedTo(result, v3);
    }

    else
    {
      v7 = *(v6 + 112);
      result = CLMapRoad::startIsConnectedTo(result, v3);
      if (result && (v7 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        v8 = *(*a1 + 108);
        v9 = **a2;
        return v8 == *(v9 + 108) || v8 == *(v9 + 112);
      }
    }
  }

  return result;
}

uint64_t CLRouteRoad::endJunctionIsConnectedTo(uint64_t *a1, uint64_t **a2)
{
  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if (*(result + 117) & 1) != 0 || (~*(result + 112) & 0x7FFFFFFF) == 0 || (v6 = *v3, (*(*v3 + 116)) || (~*(v6 + 108) & 0x7FFFFFFF) == 0 || *(v6 + 117) == 1)
    {

      return CLMapRoad::stopIsConnectedTo(result, v3);
    }

    else
    {
      v7 = *(v6 + 112);
      result = CLMapRoad::stopIsConnectedTo(result, v3);
      if (result && (v7 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        v8 = *(*a1 + 112);
        v9 = **a2;
        return v8 == *(v9 + 108) || v8 == *(v9 + 112);
      }
    }
  }

  return result;
}

double CLRouteRoad::getCourseOfRoadAtIntersection(CLMapRoad **this, int a2)
{
  v3 = *(this + 24);
  v4 = *this;
  if (v3 == a2)
  {
    LastSegmentCourse = CLMapRoad::getLastSegmentCourse(v4);
  }

  else
  {
    LastSegmentCourse = CLMapRoad::getFirstSegmentCourse(v4);
  }

  v6 = 180.0;
  if (*(this + 24))
  {
    v6 = 0.0;
  }

  return LastSegmentCourse - v6;
}

void CLRouteRoadArray::add(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 && *v2)
  {
    v4 = sub_100002824(a1, *v2);
    v6 = *a2;
    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(v4 + 56);
    *(v4 + 48) = v6;
    *(v4 + 56) = v5;
    if (v7)
    {
      sub_100001F6C(v7);
    }
  }
}

uint64_t CLRouteRoadArray::remove(uint64_t result, unint64_t ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*v2)
    {
      v4 = result;
      if (*(result + 16))
      {
        result = sub_100002940(result, *v2);
        if (result)
        {
          v5 = **a2;

          return sub_1000029A0(v4, v5);
        }
      }
    }
  }

  return result;
}

BOOL CLRouteRoadArray::getPathWithLowestCost(void *a1, void *a2)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    sub_100001F6C(v4);
  }

  if (a1[2])
  {
    v7 = *a1;
    v5 = a1 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      v8 = -1.0;
      while (1)
      {
        v9 = v6[6];
        if (v8 < 0.0)
        {
          break;
        }

        if (v9)
        {
          v10 = *(v9 + 48) + *(v9 + 56);
          if (v10 < v8)
          {
            goto LABEL_10;
          }
        }

LABEL_15:
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
        if (v14 == v5)
        {
          return v8 >= 0.0;
        }
      }

      v10 = *(v9 + 48) + *(v9 + 56);
LABEL_10:
      v11 = v6[7];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = a2[1];
      *a2 = v9;
      a2[1] = v11;
      if (v12)
      {
        sub_100001F6C(v12);
      }

      v8 = v10;
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t CLRouteRoadArray::find@<X0>(uint64_t result@<X0>, unint64_t ***a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (*a2 && *v4 && (v6 = result, (result = sub_100002940(result, *v4)) != 0))
  {
    result = sub_100002824(v6, **a2);
    v7 = *(result + 56);
    *a3 = *(result + 48);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

__int128 *sub_100001CB4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_100001F6C(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100001D20(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100001D74(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100001D74(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_100001F6C(v4);
    }
  }

  a1[1] = v2;
}

void sub_100001DD8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001E34(exception, a1);
}

std::logic_error *sub_100001E34(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100001E68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100001EB0();
}

void sub_100001EB0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void **sub_100001EE4(void **a1)
{
  sub_100001F18(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100001F18(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_100001F6C(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_100001F6C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_100001FF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100014400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_100002114(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_10000216C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_10000216C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_100002308(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_100002348(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    sub_100001F6C(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_100002348(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1000023BC(v6, a2);
  return v3;
}

uint64_t *sub_1000023BC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void *sub_10000273C(uint64_t a1, unint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = a2[1];
  while (1)
  {
    v6 = v3[4];
    v7 = v3[5];
    v8 = v5 < v7;
    if (v4 != v6)
    {
      v8 = v4 < v6;
    }

    if (!v8)
    {
      break;
    }

    v2 = v3;
LABEL_12:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  v9 = v7 < v5;
  if (v4 == v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6 < v4;
  }

  if (v10)
  {
    ++v3;
    goto LABEL_12;
  }

  v12 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v13 = v12[4];
      v15 = v13 == v4;
      v14 = v13 < v4;
      if (v15)
      {
        v14 = v12[5] < v5;
      }

      v15 = !v14;
      v16 = v14;
      if (v15)
      {
        result = v12;
      }

      v12 = v12[v16];
    }

    while (v12);
  }

  for (i = v3[1]; i; i = *(i + v20))
  {
    v18 = *(i + 32);
    v15 = v4 == v18;
    v19 = v4 < v18;
    if (v15)
    {
      v19 = v5 < *(i + 40);
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = 8;
    }
  }

  return result;
}

uint64_t sub_100002824(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_1000028C0(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1000028C0(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        v10 = v8[5];
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_15:
  *a2 = v8;
  return result;
}

uint64_t sub_100002940(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a2;
    v4 = a2[1];
    result = 1;
    do
    {
      v6 = v2[4];
      v7 = v2[5];
      v8 = v4 < v7;
      if (v3 != v6)
      {
        v8 = v3 < v6;
      }

      if (!v8)
      {
        v9 = v7 < v4;
        if (v3 == v6)
        {
          v10 = v9;
        }

        else
        {
          v10 = v6 < v3;
        }

        if (!v10)
        {
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1000029A0(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_1000029E8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_100002308(a1, v3);
  return 1;
}

uint64_t sub_1000029E8(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    v10 = v8 == v5;
    v9 = v8 < v5;
    if (v10)
    {
      v9 = *(v3 + 40) < v6;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  v13 = v6 < *(v7 + 40);
  v10 = v5 == v12;
  v14 = v5 < v12;
  if (v10)
  {
    v14 = v13;
  }

  if (v14)
  {
    return v2;
  }

  return v7;
}

int main(int argc, const char **argv, const char **envp)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLTSP,MapHelperService,Start maphelperservice", buf, 2u);
  }

  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLTSP,MapHelperService,listener resume maphelperservice", v6, 2u);
  }

  return 0;
}

void CLMapRoad::addSegmentCoordinate(uint64_t a1, float64x2_t *a2, int a3)
{
  if (!a3 || (v3 = *(a1 + 144), *(a1 + 136) == v3) || (v4 = vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(v3 - 16), *a2)))), (vorr_s8(v4, vdup_lane_s32(v4, 1)).u32[0] & 1) != 0))
  {
    sub_1000031D0(a1 + 136, a2);
  }
}

void sub_1000031D0(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100001DC0();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100005E40(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void CLMapRoad::addSegmentCoordinate(CLMapRoad *this, float64_t a2, float64_t a3, int a4)
{
  v4.f64[0] = a2;
  v4.f64[1] = a3;
  CLMapRoad::addSegmentCoordinate(this, &v4, a4);
}

uint64_t CLMapRoad::getCoordinateAtIndex(CLMapRoad *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(this + 17);
  if (((*(this + 18) - v2) >> 4) > a2)
  {
    return v2 + 16 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t CLMapRoad::computeSegmentDistances(CLMapRoad *this)
{
  v1 = (this + 160);
  if (*(this + 20) == *(this + 21))
  {
    *(this + 5) = 0;
    if (*(this + 17) == *(this + 18))
    {
      return 0;
    }

    ++CLMapRoadAnalytics::m_DistanceComputationsCounter;
    CLDistanceCalc::CLDistanceCalc(v8);
    sub_1000033F4(v1, ((*(this + 18) - *(this + 17)) >> 4) - 1);
    v4 = *(this + 17);
    if ((*(this + 18) - v4) >= 0x11)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = CLDistanceCalc::calculateDistance(v8, *(v4 + v5), *(v4 + v5 + 8), *(v4 + v5 + 16), *(v4 + v5 + 24), 0.0);
        sub_100003494(v1, &v7);
        *(this + 5) = v7 + *(this + 5);
        ++v6;
        v4 = *(this + 17);
        v5 += 16;
      }

      while (v6 < (*(this + 18) - v4) >> 4);
    }
  }

  return 1;
}

void *sub_1000033F4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100005E88(result, a2);
    }

    sub_100001DC0();
  }

  return result;
}

void sub_100003494(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100001DC0();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_100005E88(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t CLMapRoad::computeSegmentHeadings(CLMapRoad *this)
{
  v1 = (this + 184);
  if (*(this + 23) == *(this + 24))
  {
    if (*(this + 17) == *(this + 18))
    {
      return 0;
    }

    CLDistanceCalc::CLDistanceCalc(v8);
    sub_1000033F4(v1, ((*(this + 18) - *(this + 17)) >> 4) - 1);
    ++CLMapRoadAnalytics::m_HeadingComputationsCounter;
    v4 = *(this + 17);
    if ((*(this + 18) - v4) >= 0x11)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = CLDistanceCalc::calculateAzimuth(v8, *(v4 + v5), *(v4 + v5 + 8), *(v4 + v5 + 16), *(v4 + v5 + 24));
        sub_100003494(v1, &v7);
        ++v6;
        v4 = *(this + 17);
        v5 += 16;
      }

      while (v6 < (*(this + 18) - v4) >> 4);
    }
  }

  return 1;
}

double CLMapRoad::getHeadingForSegment(CLMapRoad *this, int a2)
{
  CLMapRoad::computeSegmentHeadings(this);
  v4 = *(this + 23);
  if (a2 < ((*(this + 24) - v4) >> 3))
  {
    return *(v4 + 8 * a2);
  }

  result = -1.0;
  if (((*(this + 18) - *(this + 17)) >> 4) - 1 > a2)
  {

    return CLMapRoad::calculateBearingForSegment(this, a2, a2 + 1);
  }

  return result;
}

double CLMapRoad::getLastSegmentCourse(CLMapRoad *this)
{
  v1 = (*(this + 18) - *(this + 17)) >> 4;
  if (v1 >= 2)
  {
    return CLMapRoad::getHeadingForSegment(this, v1 - 2);
  }

  else
  {
    return -1.0;
  }
}

double CLMapRoad::calculateBearingForSegment(CLMapRoad *this, int a2, unsigned int a3)
{
  result = -1.0;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *(this + 17);
    v7 = (*(this + 18) - v6) >> 4;
    if (v7 > a2 && (a3 & 0x80000000) == 0 && v6 && v7 > a3)
    {
      v11 = v3;
      v12 = v4;
      v8 = (v6 + 16 * a2);
      v9 = (v6 + 16 * a3);
      CLDistanceCalc::CLDistanceCalc(v10);
      return CLDistanceCalc::calculateAzimuth(v10, *v8, v8[1], *v9, v9[1]);
    }
  }

  return result;
}

uint64_t CLMapRoad::curvedSectionsCount(CLMapRoad *this)
{
  v1 = (*(this + 18) - *(this + 17)) >> 4;
  if (v1 < 3)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = v1 - 1;
  v6 = -1.0;
  do
  {
    HeadingForSegment = CLMapRoad::getHeadingForSegment(this, v4);
    if (HeadingForSegment >= 0.0)
    {
      v8 = HeadingForSegment;
      if (v6 >= 0.0)
      {
        v9 = fmod(HeadingForSegment - v6, 360.0);
        if (v9 < 0.0)
        {
          v9 = v9 + 360.0;
        }

        if (v9 > 180.0)
        {
          v9 = v9 + -360.0;
        }

        if (fabs(v9) <= 7.5)
        {
          v3 = v3;
        }

        else
        {
          v3 = (v3 + 1);
        }
      }
    }

    else
    {
      v8 = v6;
    }

    ++v4;
    v6 = v8;
  }

  while (v5 != v4);
  return v3;
}

BOOL CLMapRoad::headingChangeIndicatesCurve(CLMapRoad *this, double a2, double a3, double a4)
{
  result = 0;
  if (a2 >= 0.0 && a3 >= 0.0)
  {
    v6 = fmod(a2 - a3, 360.0);
    if (v6 < 0.0)
    {
      v6 = v6 + 360.0;
    }

    if (v6 > 180.0)
    {
      v6 = v6 + -360.0;
    }

    return fabs(v6) > a4;
  }

  return result;
}

BOOL CLMapRoad::isParticleOnACurvedSegment(CLMapRoad *this, double a2, double a3, int a4)
{
  if (((*(this + 18) - *(this + 17)) & 0xFFFFFFFF0) == 0x20)
  {
    return 0;
  }

  CLMapRoad::computeSegmentDistances(this);
  v9 = *(this + 20);
  v10 = *(this + 21) - v9;
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = v10 >> 3;
  v13 = *(this + 5) * a2;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v14 = -v12;
  while (1)
  {
    v13 = v13 - *v9;
    if (v13 <= 0.0)
    {
      break;
    }

    --v11;
    ++v9;
    if (v14 == v11)
    {
      return 0;
    }
  }

  if (!v11)
  {
    HeadingForSegment = CLMapRoad::getHeadingForSegment(this, 0);
    v24 = CLMapRoad::getHeadingForSegment(this, 1);
    v17 = v24;
    if (HeadingForSegment >= 0.0 && v24 >= 0.0)
    {
      v25 = fmod(HeadingForSegment - v24, 360.0);
      if (v25 < 0.0)
      {
        v25 = v25 + 360.0;
      }

      if (v25 > 180.0)
      {
        v25 = v25 + -360.0;
      }

      if (fabs(v25) > a3)
      {
        return 1;
      }
    }

    if (a4)
    {
      v22 = this;
      v21 = 2;
      goto LABEL_36;
    }

    return 0;
  }

  v15 = CLMapRoad::getHeadingForSegment(this, ~v11);
  v16 = CLMapRoad::getHeadingForSegment(this, -v11);
  v17 = v16;
  if (v15 >= 0.0 && v16 >= 0.0)
  {
    v18 = fmod(v15 - v16, 360.0);
    if (v18 < 0.0)
    {
      v18 = v18 + 360.0;
    }

    if (v18 > 180.0)
    {
      v18 = v18 + -360.0;
    }

    if (fabs(v18) > a3)
    {
      return 1;
    }
  }

  if (!a4)
  {
    return 0;
  }

  v19 = CLMapRoad::getHeadingForSegment(this, -2 - v11);
  if (v15 >= 0.0 && v19 >= 0.0)
  {
    v20 = fmod(v19 - v15, 360.0);
    if (v20 < 0.0)
    {
      v20 = v20 + 360.0;
    }

    if (v20 > 180.0)
    {
      v20 = v20 + -360.0;
    }

    if (fabs(v20) > a3)
    {
      return 1;
    }
  }

  v21 = 1 - v11;
  v22 = this;
LABEL_36:
  v26 = CLMapRoad::getHeadingForSegment(v22, v21);
  if (v17 < 0.0 || v26 < 0.0)
  {
    return 0;
  }

  v27 = fmod(v17 - v26, 360.0);
  if (v27 < 0.0)
  {
    v27 = v27 + 360.0;
  }

  if (v27 > 180.0)
  {
    v27 = v27 + -360.0;
  }

  return fabs(v27) > a3;
}

int8x16_t CLMapRoad::reverseRoadVector(CLMapRoad *this)
{
  v2 = *(this + 17);
  v3 = *(this + 18);
  v4 = (v3 - 16);
  if (v2 != v3 && v4 > v2)
  {
    v6 = v2 + 16;
    do
    {
      v7 = *(v6 - 16);
      *(v6 - 16) = *v4;
      *v4-- = v7;
      v8 = v6 >= v4;
      v6 += 16;
    }

    while (!v8);
  }

  v9 = *(this + 20);
  v10 = *(this + 21);
  v11 = (v10 - 8);
  if (v9 != v10 && v11 > v9)
  {
    v13 = v9 + 8;
    do
    {
      v14 = *(v13 - 8);
      *(v13 - 8) = *v11;
      *v11-- = v14;
      v8 = v13 >= v11;
      v13 += 8;
    }

    while (!v8);
  }

  v15 = *(this + 23);
  for (i = *(this + 24); v15 != i; ++v15)
  {
    v17 = fmod(*v15 + 180.0, 360.0);
    if (v17 < 0.0)
    {
      v17 = v17 + 360.0;
    }

    *v15 = v17;
  }

  *(this + 108) = vrev64_s32(*(this + 108));
  v18 = *(this + 117);
  *(this + 117) = *(this + 116);
  *(this + 116) = v18;
  result = vextq_s8(*(this + 120), *(this + 120), 8uLL);
  *(this + 120) = result;
  return result;
}

uint64_t CLMapRoad::isUTurnRoadOf(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  result = CLMapRoad::startIsConnectedToStop(a1, a2);
  if (result)
  {
    result = CLMapRoad::stopIsConnectedToStart(a1, a2);
    if (result)
    {
      v6 = *(a1 + 136);
      v7 = *(a1 + 144) - v6;
      v8 = v7 >> 4;
      v9 = *(v2 + 136);
      if ((v7 >> 4) == ((*(v2 + 144) - v9) >> 4))
      {
        if (v8 < 3)
        {
          return 1;
        }

        v10 = (v7 >> 4) & 0x7FFFFFFF;
        v11 = v9 + 1;
        v12 = (v8 - 1) - 1;
        v13 = v10 - 2;
        v14 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
        result = 1;
        while (1)
        {
          if (v6)
          {
            if ((v13 & 0x8000000000000000) == 0)
            {
              v15 = vmovn_s64(vcgtq_f64(v14, vabdq_f64(*v11, *(v6 + 16 * v13))));
              if ((vand_s8(v15, vdup_lane_s32(v15, 1)).u8[0] & 1) == 0)
              {
                break;
              }
            }
          }

          ++v11;
          --v13;
          if (!--v12)
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t CLMapRoad::startIsConnectedToStop(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 136);
    v4 = 0uLL;
    v5 = 0uLL;
    if (*(a1 + 144) != v3)
    {
      v5 = *v3;
    }

    v6 = *(v2 + 144);
    if (v6 != *(v2 + 136))
    {
      v4 = *(v6 - 16);
    }

    v7 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t CLMapRoad::stopIsConnectedToStart(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 144);
    v4 = 0uLL;
    v5 = 0uLL;
    if (v3 != *(a1 + 136))
    {
      v5 = *(v3 - 16);
    }

    v7 = v2 + 136;
    v6 = *(v2 + 136);
    if (*(v7 + 8) != v6)
    {
      v4 = *v6;
    }

    v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v8, vdup_lane_s32(v8, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t CLMapRoad::startIsConnectedToStart(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 136);
    v4 = 0uLL;
    v5 = 0uLL;
    if (*(a1 + 144) != v3)
    {
      v5 = *v3;
    }

    v7 = v2 + 136;
    v6 = *(v2 + 136);
    if (*(v7 + 8) != v6)
    {
      v4 = *v6;
    }

    v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v8, vdup_lane_s32(v8, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t CLMapRoad::stopIsConnectedToStop(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 144);
    v4 = 0uLL;
    v5 = 0uLL;
    if (v3 != *(a1 + 136))
    {
      v5 = *(v3 - 16);
    }

    v6 = *(v2 + 144);
    if (v6 != *(v2 + 136))
    {
      v4 = *(v6 - 16);
    }

    v7 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t CLMapRoad::isConnectedToStart(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (CLMapRoad::startIsConnectedToStart(a1, a2))
  {
    return 1;
  }

  return CLMapRoad::stopIsConnectedToStart(a1, a2);
}

uint64_t CLMapRoad::isConnectedToStop(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (CLMapRoad::stopIsConnectedToStop(a1, a2))
  {
    return 1;
  }

  return CLMapRoad::startIsConnectedToStop(a1, a2);
}

uint64_t CLMapRoad::startIsConnectedTo(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (CLMapRoad::startIsConnectedToStart(a1, a2))
  {
    return 1;
  }

  return CLMapRoad::startIsConnectedToStop(a1, a2);
}

uint64_t CLMapRoad::stopIsConnectedTo(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (CLMapRoad::stopIsConnectedToStop(a1, a2))
  {
    return 1;
  }

  return CLMapRoad::stopIsConnectedToStart(a1, a2);
}

uint64_t CLMapRoad::isConnectedTo(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (CLMapRoad::startIsConnectedTo(a1, a2))
  {
    return 1;
  }

  return CLMapRoad::stopIsConnectedTo(a1, a2);
}

uint64_t CLMapRoad::isNonZeroLength(CLMapRoad *this)
{
  v2 = *(this + 17);
  v1 = *(this + 18);
  if ((v1 - v2) >= 0x11)
  {
    if (v1 - v2 != 32)
    {
      return 1;
    }

    v4 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(v1 - 16), *v2)));
    if ((vand_s8(v4, vdup_lane_s32(v4, 1)).u32[0] & 1) == 0)
    {
      return 1;
    }
  }

  result = 0;
  ++CLMapRoadAnalytics::m_ZeroLengthCounter;
  return result;
}

uint64_t CLMapRoad::getAsString@<X0>(CLMapRoad *this@<X0>, _BYTE *a2@<X8>)
{
  sub_100004C3C(v77);
  v4 = v78;
  *(&v78 + *(v78 - 24) + 8) |= 4u;
  *(&v80[0].__locale_ + *(v4 - 24)) = 0;
  sub_1000062E8(&v78, ",roadID,", 8);
  v5 = *this;
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",clRoadId,", 10);
  v6 = *(this + 1);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",oneWay,", 8);
  v7 = *(this + 16);
  std::ostream::operator<<();
  v8 = sub_1000062E8(&v78, ",frc,", 5);
  v9 = *(this + 5);
  if (v9 >= 0xA)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", *(this + 5)];
  }

  else
  {
    v10 = off_100014478[v9];
  }

  v11 = [(__CFString *)v10 UTF8String];
  v12 = strlen(v11);
  sub_1000062E8(v8, v11, v12);

  v13 = sub_1000062E8(&v78, ",fow,", 5);
  v14 = *(this + 6);
  if (v14 < 0x17 && ((0x7EDDDFu >> v14) & 1) != 0)
  {
    v15 = off_1000144C8[v14];
  }

  else
  {
    v15 = [NSString stringWithFormat:@"(unknown: %i)", *(this + 6)];
  }

  v16 = [(__CFString *)v15 UTF8String];
  v17 = strlen(v16);
  sub_1000062E8(v13, v16, v17);

  sub_1000062E8(&v78, ",travelDirection,", 17);
  v18 = *(this + 18);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",bridge,", 8);
  v19 = *(this + 19);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",tunnel,", 8);
  v20 = *(this + 18);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",railway,", 9);
  v21 = *(this + 17);
  std::ostream::operator<<();
  v22 = sub_1000062E8(&v78, ",width,", 7);
  *(v22 + *(*v22 - 24) + 16) = 1;
  v23 = *(this + 12);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",bikeableSide,", 14);
  v24 = *(this + 22);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",walkableSide,", 14);
  v25 = *(this + 21);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",startJunction,", 15);
  v26 = *(this + 27);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",stopJunction,", 14);
  v27 = *(this + 28);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",startAtTileBorder,", 19);
  v28 = *(this + 116);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",stopAtTileBorder,", 18);
  v29 = *(this + 117);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",laneCount,", 11);
  v30 = *(this + 26);
  std::ostream::operator<<();
  v31 = sub_1000062E8(&v78, ",name,", 6);
  if (*(this + 71) < 0)
  {
    sub_100005ED0(__p, *(this + 6), *(this + 7));
  }

  else
  {
    *__p = *(this + 3);
    v76 = *(this + 8);
  }

  if (v76 >= 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  if (v76 >= 0)
  {
    v33 = HIBYTE(v76);
  }

  else
  {
    v33 = __p[1];
  }

  sub_1000062E8(v31, v32, v33);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000062E8(&v78, ",startAlt,", 10);
  v34 = *(this + 15);
  std::ostream::operator<<();
  sub_1000062E8(&v78, ",stopAlt,", 9);
  v35 = *(this + 16);
  std::ostream::operator<<();
  v36 = *(this + 17);
  if (((*(this + 18) - v36) >> 4) >= 1)
  {
    v37 = 0;
    v38 = 0;
    do
    {
      if (v36)
      {
        if (v38)
        {
          std::to_string(&v73, v38 - 1);
          v39 = std::string::insert(&v73, 0, ",latitude", 9uLL);
          v40 = *&v39->__r_.__value_.__l.__data_;
          v74.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
          *&v74.__r_.__value_.__l.__data_ = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          v41 = std::string::append(&v74, ",", 1uLL);
          v42 = *&v41->__r_.__value_.__l.__data_;
          v76 = v41->__r_.__value_.__r.__words[2];
          *__p = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          if (v76 >= 0)
          {
            v43 = __p;
          }

          else
          {
            v43 = __p[0];
          }

          if (v76 >= 0)
          {
            v44 = HIBYTE(v76);
          }

          else
          {
            v44 = __p[1];
          }

          v45 = sub_1000062E8(&v78, v43, v44);
          *(v45 + *(*v45 - 24) + 16) = 8;
          v46 = *(v36 + v37);
          std::ostream::operator<<();
          if (SHIBYTE(v76) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          std::to_string(&v73, v38 - 1);
          v47 = std::string::insert(&v73, 0, ",longitude", 0xAuLL);
          v48 = *&v47->__r_.__value_.__l.__data_;
          v74.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
          *&v74.__r_.__value_.__l.__data_ = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          v49 = std::string::append(&v74, ",", 1uLL);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v76 = v49->__r_.__value_.__r.__words[2];
          *__p = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          if (v76 >= 0)
          {
            v51 = __p;
          }

          else
          {
            v51 = __p[0];
          }

          if (v76 >= 0)
          {
            v52 = HIBYTE(v76);
          }

          else
          {
            v52 = __p[1];
          }

          v53 = sub_1000062E8(&v78, v51, v52);
          *(v53 + *(*v53 - 24) + 16) = 8;
          v54 = *(v36 + v37 + 8);
          std::ostream::operator<<();
          if (SHIBYTE(v76) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          std::to_string(&v73, v38 - 1);
          v55 = std::string::insert(&v73, 0, ",course", 7uLL);
          v56 = *&v55->__r_.__value_.__l.__data_;
          v74.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
          *&v74.__r_.__value_.__l.__data_ = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          v57 = std::string::append(&v74, ",", 1uLL);
          v58 = *&v57->__r_.__value_.__l.__data_;
          v76 = v57->__r_.__value_.__r.__words[2];
          *__p = v58;
          v57->__r_.__value_.__l.__size_ = 0;
          v57->__r_.__value_.__r.__words[2] = 0;
          v57->__r_.__value_.__r.__words[0] = 0;
          if (v76 >= 0)
          {
            v59 = __p;
          }

          else
          {
            v59 = __p[0];
          }

          if (v76 >= 0)
          {
            v60 = HIBYTE(v76);
          }

          else
          {
            v60 = __p[1];
          }

          v61 = sub_1000062E8(&v78, v59, v60);
          *(v61 + *(*v61 - 24) + 16) = 3;
          CLMapRoad::getHeadingForSegment(this, v38);
          std::ostream::operator<<();
          if (SHIBYTE(v76) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v62 = sub_1000062E8(&v78, ",latitude,", 10);
          *(v62 + *(*v62 - 24) + 16) = 8;
          v63 = *(v36 + v37);
          std::ostream::operator<<();
          v64 = sub_1000062E8(&v78, ",longitude,", 11);
          *(v64 + *(*v64 - 24) + 16) = 8;
          v65 = *(v36 + v37 + 8);
          std::ostream::operator<<();
          v66 = sub_1000062E8(&v78, ",course,", 8);
          *(v66 + *(*v66 - 24) + 16) = 3;
          CLMapRoad::getHeadingForSegment(this, 0);
          std::ostream::operator<<();
        }
      }

      ++v38;
      v36 = *(this + 17);
      v37 += 16;
    }

    while (v38 < ((*(this + 18) - v36) >> 4));
  }

  if ((v85 & 0x10) != 0)
  {
    v69 = v84;
    if (v84 < v81)
    {
      v84 = v81;
      v69 = v81;
    }

    locale = v80[4].__locale_;
  }

  else
  {
    if ((v85 & 8) == 0)
    {
      v67 = 0;
      v68 = a2;
      a2[23] = 0;
      goto LABEL_74;
    }

    locale = v80[1].__locale_;
    v69 = v80[3].__locale_;
  }

  v68 = a2;
  v67 = v69 - locale;
  if ((v69 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005F74();
  }

  if (v67 >= 0x17)
  {
    operator new();
  }

  a2[23] = v67;
  if (v67)
  {
    memmove(a2, locale, v67);
  }

LABEL_74:
  v68[v67] = 0;
  v78 = v71;
  if (v83 < 0)
  {
    operator delete(v82);
  }

  std::locale::~locale(v80);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100004B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100004C3C(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100006678((a1 + 3), 24);
  return a1;
}

void sub_100004EB8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL CLMapRoad::fillFromMapHelperNSDictionaryArray(CLMapRoad *this, CLDistanceCalc *a2, NSDictionary *a3, int a4)
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
LABEL_52:
    v63 = 0;
    goto LABEL_62;
  }

  v8 = [(NSDictionary *)v6 valueForKey:@"roadID"];

  if (v8)
  {
    v9 = [(NSDictionary *)v7 valueForKey:@"roadID"];
    *this = [v9 longLongValue];
  }

  v10 = [(NSDictionary *)v7 valueForKey:@"roadClass"];

  if (v10)
  {
    v11 = [(NSDictionary *)v7 valueForKey:@"roadClass"];
    *(this + 5) = [v11 intValue];
  }

  v12 = [(NSDictionary *)v7 valueForKey:@"formOfWay"];

  if (v12)
  {
    v13 = [(NSDictionary *)v7 valueForKey:@"formOfWay"];
    *(this + 6) = [v13 intValue];
  }

  v14 = [(NSDictionary *)v7 valueForKey:@"travelDirection"];

  if (v14)
  {
    v15 = [(NSDictionary *)v7 valueForKey:@"travelDirection"];
    *(this + 18) = [v15 intValue];
  }

  v16 = [(NSDictionary *)v7 valueForKey:@"rampType"];

  if (v16)
  {
    v17 = [(NSDictionary *)v7 valueForKey:@"rampType"];
    *(this + 19) = [v17 intValue];
  }

  v18 = [(NSDictionary *)v7 valueForKey:@"speedLimit"];

  if (v18)
  {
    v19 = [(NSDictionary *)v7 valueForKey:@"speedLimit"];
    *(this + 4) = [v19 intValue];
  }

  v20 = [(NSDictionary *)v7 valueForKey:@"isDrivable"];

  if (v20)
  {
    v21 = [(NSDictionary *)v7 valueForKey:@"isDrivable"];
    *(this + 81) = [v21 BOOLValue];
  }

  v22 = [(NSDictionary *)v7 valueForKey:@"isRoadPedestrianNavigable"];

  if (v22)
  {
    v23 = [(NSDictionary *)v7 valueForKey:@"isRoadPedestrianNavigable"];
    v24 = [v23 BOOLValue];
  }

  else
  {
    v24 = 0;
  }

  v25 = [(NSDictionary *)v7 valueForKey:@"isTunnel"];

  if (v25)
  {
    v26 = [(NSDictionary *)v7 valueForKey:@"isTunnel"];
    *(this + 18) = [v26 BOOLValue];
  }

  v27 = [(NSDictionary *)v7 valueForKey:@"isBridge"];

  if (v27)
  {
    v28 = [(NSDictionary *)v7 valueForKey:@"isBridge"];
    *(this + 19) = [v28 BOOLValue];
  }

  v29 = [(NSDictionary *)v7 valueForKey:@"isRail"];

  if (v29)
  {
    v30 = [(NSDictionary *)v7 valueForKey:@"isRail"];
    *(this + 17) = [v30 BOOLValue];
  }

  v31 = [(NSDictionary *)v7 valueForKey:@"startJunction"];

  if (v31)
  {
    v32 = [(NSDictionary *)v7 valueForKey:@"startJunction"];
    *(this + 27) = [v32 intValue];
  }

  v33 = [(NSDictionary *)v7 valueForKey:@"stopJunction"];

  if (v33)
  {
    v34 = [(NSDictionary *)v7 valueForKey:@"stopJunction"];
    *(this + 28) = [v34 intValue];
  }

  v35 = [(NSDictionary *)v7 valueForKey:@"startTileBorder"];

  if (v35)
  {
    v36 = [(NSDictionary *)v7 valueForKey:@"startTileBorder"];
    *(this + 116) = [v36 BOOLValue];
  }

  v37 = [(NSDictionary *)v7 valueForKey:@"endTileBorder"];

  if (v37)
  {
    v38 = [(NSDictionary *)v7 valueForKey:@"endTileBorder"];
    *(this + 117) = [v38 BOOLValue];
  }

  v39 = [(NSDictionary *)v7 valueForKey:@"bikeableSide"];

  if (v39)
  {
    v40 = [(NSDictionary *)v7 valueForKey:@"bikeableSide"];
    *(this + 22) = [v40 intValue];
  }

  v41 = [(NSDictionary *)v7 valueForKey:@"walkableSide"];

  if (v41)
  {
    v42 = [(NSDictionary *)v7 valueForKey:@"walkableSide"];
    *(this + 21) = [v42 intValue];
  }

  v70 = v24;
  v71 = a4;
  v43 = [(NSDictionary *)v7 valueForKey:@"coordinateCount"];

  if (v43)
  {
    v44 = [(NSDictionary *)v7 valueForKey:@"coordinateCount"];
    v45 = [v44 intValue];

    if (v45 >= 1)
    {
      v46 = 0;
      do
      {
        v47 = objc_autoreleasePoolPush();
        v48 = [NSString stringWithFormat:@"coord%i", v46];
        v49 = [(NSDictionary *)v7 valueForKey:v48];
        v50 = [v49 componentsSeparatedByString:{@", "}];

        v51 = [v50 count];
        if (v51 == 3)
        {
          v52 = [v50 objectAtIndexedSubscript:0];
          [v52 doubleValue];
          v54 = v53;
          v55 = [v50 objectAtIndexedSubscript:1];
          [v55 doubleValue];
          v72.f64[0] = v54;
          v72.f64[1] = v56;
          CLMapRoad::addSegmentCoordinate(this, &v72, 1);

          if (((*(this + 18) - *(this + 17)) & 0xFFFFFFFF0) == 0x10)
          {
            v57 = [v50 objectAtIndexedSubscript:2];
            [v57 doubleValue];
            *(this + 15) = v58;
          }

          else
          {
            v57 = [v50 objectAtIndexedSubscript:2];
            [v57 doubleValue];
            *(this + 16) = v59;
          }
        }

        objc_autoreleasePoolPop(v47);
        if (v51 != 3)
        {
          goto LABEL_52;
        }

        v46 = (v46 + 1);
      }

      while (v45 != v46);
    }
  }

  v60 = *(this + 17);
  if ((*(this + 21) - 1) < 3)
  {
    v61 = 1;
  }

  else
  {
    v61 = v70;
  }

  *(this + 80) = v61 & (v60 ^ 1);
  if (v61 & (v60 ^ 1))
  {
    v62 = 1;
  }

  else
  {
    v62 = ((*(this + 22) - 1) < 3) & (v60 ^ 1);
  }

  *(this + 82) = v62;
  *(this + 12) = sub_1000056E8(*(this + 5), *(this + 18) != 0);
  v64 = (*(this + 17) & 1) == 0 && *(this + 18) != 0;
  v67 = *(this + 17);
  v66 = this + 136;
  v65 = v67;
  *(v66 - 120) = v64;
  v68 = *(v66 + 1) - v67;
  if (v71)
  {
    v63 = (v68 >> 4) > 1;
  }

  else
  {
    v63 = 1;
    if (v65 && (v68 & 0xFFFFFFFF0) == 0x10)
    {
      v72 = *v65;
      sub_1000031D0(v66, &v72);
    }
  }

LABEL_62:

  return v63;
}

float sub_1000056E8(unsigned int a1, int a2)
{
  result = 7.4;
  if (a2)
  {
    result = 5.55;
  }

  if (a1 <= 7)
  {
    v3 = &unk_10000E330;
    if (a2)
    {
      v3 = &unk_10000E310;
    }

    return v3[a1];
  }

  return result;
}

uint64_t CLMapRoad::fillFromGEOMapFeatureRoad(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && (!a3 || [v5 coordinateCount] >= 2))
  {
    v8 = [v6 internalRoadName];

    if (v8)
    {
      v9 = [v6 internalRoadName];
      v10 = [v9 UTF8String];
      v11 = strlen(v10);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100005F74();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&__dst, v10, v11);
      }

      __dst.__r_.__value_.__s.__data_[v12] = 0;
      std::string::operator=((a1 + 48), &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    v13 = [v6 roadID];
    v14 = sub_100005B18(v6);
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 17) = [v6 isRail];
    *(a1 + 18) = [v6 isTunnel];
    *(a1 + 19) = [v6 isBridge];
    *(a1 + 20) = [v6 roadClass];
    *(a1 + 24) = [v6 formOfWay];
    v15 = [v6 travelDirection];
    *(a1 + 72) = v15;
    *(a1 + 16) = (v15 != 0) & ~*(a1 + 17);
    *(a1 + 76) = [v6 rampType];
    *(a1 + 80) = sub_100005D3C(v6);
    *(a1 + 81) = [v6 isDrivable];
    if (sub_100005D3C(v6))
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_100005DC0(v6);
    }

    *(a1 + 82) = v16;
    *(a1 + 84) = [v6 walkableSide];
    v17 = [v6 startJunction];
    *(a1 + 108) = [v17 junctionIndex];

    v18 = [v6 endJunction];
    *(a1 + 112) = [v18 junctionIndex];

    v19 = [v6 startJunction];
    *(a1 + 116) = [v19 isOnTileBorder];

    v20 = [v6 endJunction];
    *(a1 + 117) = [v20 isOnTileBorder];

    *(a1 + 96) = sub_1000056E8([v6 roadClass], objc_msgSend(v6, "travelDirection") != 0);
    LODWORD(v20) = [v6 speedLimitIsMPH];
    v21 = [v6 speedLimit];
    v22 = 0.277778;
    if (v20)
    {
      v22 = 0.44704;
    }

    *(a1 + 32) = v22 * v21;
    *(a1 + 104) = [v6 laneCount];
    v23 = 0;
    v24 = 0;
    *(a1 + 88) = [v6 bikeableSide];
    while ([v6 coordinateCount] > v24)
    {
      CLMapRoad::addSegmentCoordinate(a1, ([v6 coordinates] + v23), 1);
      ++v24;
      v23 += 16;
    }

    if ((a3 & 1) == 0 && [v6 coordinateCount] == 1)
    {
      sub_1000031D0(a1 + 136, [v6 coordinates]);
    }

    if ([v6 coordinateCount])
    {
      *(a1 + 120) = *([v6 coordinates3d] + 2);
      v25 = [v6 coordinates3d];
      *(a1 + 128) = v25[3 * [v6 coordinateCount] - 1];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100005AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_100005B18(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 roadID];
    v17 = v3;
    if ([v2 coordinateCount] >= 2)
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      v13 = *[v2 coordinates];
      sub_1000031D0(&__p, &v13);
      v4 = 1;
      v5 = 16;
      while ([v2 coordinateCount] > v4)
      {
        v12 = *([v2 coordinates] + v5);
        v6 = [NSString stringWithFormat:@"%.7lf", v12];
        v7 = [NSString stringWithFormat:@"%.7lf", *(&v12 + 1)];
        [v6 doubleValue];
        *&v12 = v8;
        [v7 doubleValue];
        *(&v12 + 1) = v9;
        if (vabdd_f64(*(&v13 + 1), v9) >= 0.0000001 || vabdd_f64(*&v13, *&v12) >= 0.0000001)
        {
          sub_1000031D0(&__p, &v12);
        }

        v13 = v12;

        ++v4;
        v5 += 16;
      }

      v10 = __p;
      if ((v15 - __p) >= 0x11)
      {
        sub_1000060DC([v2 isRail], objc_msgSend(v2, "isBridge"), objc_msgSend(v2, "isTunnel"), &__p, &v17);
        v3 = v17;
        v10 = __p;
      }

      if (v10)
      {
        v15 = v10;
        operator delete(v10);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100005CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100005D3C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isRoadPedestrianNavigable];
    v4 = [v2 walkableSide];
    v5 = [v2 isRail];
    if (v4 - 1 < 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6 & (v5 ^ 1);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100005DC0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 bikeableSide];
    v4 = [v2 isRail] ^ 1;
    if (v3 - 1 < 3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100005E40(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100001EB0();
}

void sub_100005E88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100001EB0();
}

void *sub_100005ED0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100005F74();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100005F8C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

double sub_1000060DC(int a1, int a2, int a3, uint64_t *a4, unint64_t *a5)
{
  if (a3)
  {
    v6 = 5;
  }

  else
  {
    v6 = 2;
  }

  if (a1)
  {
    v6 = 4;
  }

  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v20 = 0uLL;
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  if (v9 >= 2 * v7 + 2)
  {
    v20 = *(v8 + 16 * v7);
  }

  else
  {
    v10 = 0.7;
    if (a3)
    {
      v10 = 0.9;
    }

    if (a1)
    {
      v10 = 0.775;
    }

    if (a2)
    {
      v11 = 0.825;
    }

    else
    {
      v11 = v10;
    }

    v12 = v9 > 2;
    v13 = (v8 + 16 * (v9 > 2));
    v14 = *v13;
    v15 = v13[1];
    v16 = 16;
    if (v12)
    {
      v16 = 32;
    }

    sub_100006224(&v20, v14, v15, *(v8 + v16), *(v8 + v16 + 8), v11);
  }

  result = *(&v20 + 1);
  v18 = vabdd_f64(0.0, *&v20) >= 0.0000001;
  v19 = vabdd_f64(0.0, *(&v20 + 1)) >= 0.0000001 || v18;
  if (v19 == 1)
  {
    result = (*(&v20 + 1) + 180.0) * 10000000.0;
    *a5 = result | (((*&v20 + 90.0) * 10000000.0) << 32);
  }

  return result;
}

void sub_100006224(double *a1, double a2, double a3, double a4, double a5, double a6)
{
  *a1 = a2 + (a4 - a2) * a6;
  v7 = a3 + 360.0;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  v8 = a5 + 360.0;
  if (a5 >= 0.0)
  {
    v8 = a5;
  }

  v9 = v8 - v7;
  if (v9 <= 180.0)
  {
    if (v9 < -180.0)
    {
      v9 = v9 + 360.0;
    }
  }

  else
  {
    v9 = v9 + -360.0;
  }

  v10 = fmod(a3 + v9 * a6, 360.0);
  if (v10 <= -180.0)
  {
    v10 = v10 + 360.0;
  }

  else if (v10 > 180.0)
  {
    v10 = v10 + -360.0;
  }

  a1[1] = v10;
}

void *sub_1000062E8(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100006490(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100006428(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100006408);
}

uint64_t sub_100006490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100005F74();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_10000665C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100006678(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100006734(a1);
  return a1;
}

void sub_10000670C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100006734(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

double CLDistanceCalc::getDeltaLongitude(CLDistanceCalc *this, double a2, double a3)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a3 < 0.0)
  {
    a3 = a3 + 360.0;
  }

  result = a3 - a2;
  if (result > 180.0)
  {
    return result + -360.0;
  }

  if (result < -180.0)
  {
    return result + 360.0;
  }

  return result;
}

long double CLDistanceCalc::calculateDistanceVincenty(CLDistanceCalc *this, double a2, double a3, double a4, double a5)
{
  v5 = a4;
  result = 0.0;
  if (a4 > 90.0)
  {
    return result;
  }

  v8 = fabs(a2);
  if (v8 > 90.0 || a4 < -90.0)
  {
    return result;
  }

  v9 = 360.0;
  v10 = a5 + 360.0;
  if (a5 >= 0.0)
  {
    v10 = a5;
  }

  v11 = a3 + 360.0;
  if (a3 >= 0.0)
  {
    v11 = a3;
  }

  v12 = v11 - v10;
  if (v12 <= 180.0)
  {
    if (v12 >= -180.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = -360.0;
  }

  v12 = v12 + v9;
LABEL_12:
  if (fabs(a2 + a4) >= 0.0001)
  {
    v44 = a3;
    v46 = a5;
LABEL_17:
    v13 = v12;
    goto LABEL_18;
  }

  if (v8 < 0.0001 && 180.0 - fabs(v12) < 0.0001)
  {
    return 20037508.3;
  }

  v42 = fabs(v8 + -90.0) < 0.0001;
  if (v42)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v46 = a5;
  v44 = a3;
  if (!v42 && 180.0 - fabs(v12) >= 0.0001)
  {
    goto LABEL_17;
  }

  if (a2 <= a4)
  {
    v5 = a4 + -0.0001;
  }

  else
  {
    a2 = a2 + -0.0001;
  }

LABEL_18:
  v14 = v13 * 0.0174532925;
  v43 = a2;
  v15 = tan(a2 * 0.0174532925);
  v45 = v5;
  v16 = tan(v5 * 0.0174532925);
  v17 = v15 * 0.996647189;
  v18 = v16 * 0.996647189;
  v19 = atan(v17);
  v20 = atan(v18);
  v21 = __sincos_stret(v19);
  v22 = __sincos_stret(v20);
  v23 = 0;
  v24 = v22.__cosval * v21.__cosval;
  v47 = v14;
  while (1)
  {
    v25 = __sincos_stret(v14);
    v26 = sqrt((-(v21.__sinval * v22.__cosval) * v25.__cosval + v21.__cosval * v22.__sinval) * (-(v21.__sinval * v22.__cosval) * v25.__cosval + v21.__cosval * v22.__sinval) + v22.__cosval * v25.__sinval * (v22.__cosval * v25.__sinval));
    if (v26 < 2.22044605e-15)
    {
      break;
    }

    v27 = v24 * v25.__cosval + v21.__sinval * v22.__sinval;
    v28 = fabs(v27);
    if (fabs(v26) > 1.0 || v28 > 1.0)
    {
      break;
    }

    v30 = atan2(v26, v27);
    v31 = v24 * v25.__sinval / v26;
    if (v31 > 1.0)
    {
      break;
    }

    v32 = 1.0 - v31 * v31;
    if (fabs(v32) >= 2.22044605e-15)
    {
      v33 = v27 - v22.__sinval * (v21.__sinval + v21.__sinval) / v32;
      v34 = v32 * 0.000209550667 * ((v32 * -3.0 + 4.0) * 0.00335281066 + 4.0);
    }

    else
    {
      v33 = -1.0;
      v34 = 0.0;
    }

    v35 = v31 * ((1.0 - v34) * 0.00335281066);
    v36 = v33 * v33 * 2.0 + -1.0;
    v37 = v47 + v35 * (v30 + v26 * v34 * (v33 + v27 * v34 * v36));
    if (vabdd_f64(v37, v14) > 0.000000001)
    {
      v14 = v37;
      if (v23++ < 0x31)
      {
        continue;
      }
    }

    v39 = v32 * 2.72331606e11 / 4.04083e13;
    v40 = v39 * 0.0000610351562 * (v39 * (v39 * (v39 * -175.0 + 320.0) + -768.0) + 4096.0) + 1.0;
    v41 = v39 * 0.0009765625 * (v39 * (v39 * (v39 * -47.0 + 74.0) + -128.0) + 256.0);
    return v40 * 6356752.31 * (v30 - v26 * v41 * (v33 + v41 * 0.25 * ((v33 * v33 * 4.0 + -3.0) * (v33 * (v41 / 6.0) * 3.0) + v27 * v36)));
  }

  return sub_100006CE4(v43, v44, v45, v46);
}

long double sub_100006CE4(double a1, double a2, double a3, double a4)
{
  v5 = 360.0;
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v6 = a4 - a2;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = -360.0;
  }

  v6 = v6 + v5;
LABEL_9:
  v7 = a1 * 0.0174532925;
  v8 = v6 * 0.0174532925;
  v9 = sin((a3 - a1) * 0.0174532925 * 0.5);
  v10 = v9 * v9;
  v11 = __sincos_stret(v7);
  v12 = v11.__cosval * cos(a3 * 0.0174532925);
  v13 = sin(v8 * 0.5);
  v14 = v10 + v12 * (v13 * v13);
  v15 = 1.0 - v14;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = atan2(sqrt(v14), sqrt(v15));
  return (fabs(v11.__sinval) * -21000.0 + 6378160.0) * (v16 + v16);
}

void CLDistanceCalc::CLDistanceCalc(CLDistanceCalc *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = xmmword_10000E450;
  *(this + 4) = 0x3FF0000000000000;
}

{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = xmmword_10000E450;
  *(this + 4) = 0x3FF0000000000000;
}

float64x2_t CLDistanceCalc::calculateRadii(CLDistanceCalc *this, const double *a2)
{
  v3 = *a2;
  v4 = *a2 * 0.0174532925;
  *(this + 2) = v4;
  *(this + 3) = v3;
  v5 = __sincos_stret(v4);
  v6 = v5.__sinval * -0.00669437999 * v5.__sinval + 1.0;
  v7 = sqrt(v6);
  v8.f64[0] = v6 * v7;
  v8.f64[1] = v7;
  result = vdivq_f64(xmmword_10000E450, v8);
  *this = result;
  *(this + 4) = *&v5.__cosval;
  return result;
}

double CLDistanceCalc::reset(CLDistanceCalc *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

long double CLDistanceCalc::calculateDistance3D(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v17 = 0.0;
  v18 = 0.0;
  v16 = 0.0;
  v14 = sub_100006FC8(a2, a3, a5, a6);
  if (!v14)
  {
    v14 = CLDistanceCalc::calculatePosDifference(this, a2, a3, a4, a5, a6, a7, &v18, &v17, &v16);
    if (v14)
    {
      return sqrt(v17 * v17 + v18 * v18 + v16 * v16);
    }
  }

  return CLDistanceCalc::calculateDistanceVincenty(v14, a2, a3, a5, a6);
}

BOOL sub_100006FC8(double a1, double a2, double a3, double a4)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = v4;
  if (v4 < 0)
  {
    v5 = -v5;
  }

  v6 = a3 - a1;
  if (v6 < 0)
  {
    v6 = a1 - a3;
  }

  return v6 > 2 || v5 > 2;
}

BOOL CLDistanceCalc::calculatePosDifference(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6, double a7, double *a8, double *a9, double *a10)
{
  v10 = vabdd_f64(a2, a5);
  if (v10 <= 2.0)
  {
    v21 = *(this + 3);
    if (v21 == 0.0 || vabdd_f64(a2, v21) > 0.005)
    {
      v22 = (a2 + a5) * 0.5;
      *(this + 2) = v22 * 0.0174532925;
      *(this + 3) = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *this = vdivq_f64(xmmword_10000E450, v26);
      *(this + 4) = *&v23.__cosval;
    }

    v27 = 360.0;
    v28 = a3 + 360.0;
    if (a3 >= 0.0)
    {
      v28 = a3;
    }

    v29 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v29 = a6;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a8 = (a5 - a2) * 0.0174532925 * (*this + a4);
        *a9 = v30 * 0.0174532925 * ((*(this + 1) + a4) * *(this + 4));
        *a10 = a7 - a4;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

long double CLDistanceCalc::calculateDistance(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6)
{
  v15 = 0.0;
  v16 = 0.0;
  v12 = sub_100006FC8(a2, a3, a4, a5);
  if (!v12)
  {
    v12 = CLDistanceCalc::calculatePosDifference(this, a2, a3, a6, a4, a5, a6, &v16, &v15, &v14);
    if (v12)
    {
      return sqrt(v15 * v15 + v16 * v16);
    }
  }

  return CLDistanceCalc::calculateDistanceVincenty(v12, a2, a3, a4, a5);
}

long double CLDistanceCalc::calculateDistance(CLDistanceCalc *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 36);
  v5 = *(a3 + 36);
  if (v4 <= 0.0 || v5 <= 0.0)
  {
    if (v4 <= 0.0)
    {
      v7 = 0.0;
      if (v5 <= 0.0)
      {
        goto LABEL_11;
      }

      v6 = *(a3 + 28);
    }

    else
    {
      v6 = *(a2 + 28);
    }
  }

  else
  {
    v6 = (*(a2 + 28) + *(a3 + 28)) * 0.5;
  }

  v7 = -450.0;
  if (v6 >= -450.0)
  {
    v7 = v6;
    if (v6 > 1000000.0)
    {
      v7 = 1000000.0;
    }
  }

LABEL_11:
  v8 = *(a2 + 4);
  v9 = *(a2 + 12);
  v10 = *(a3 + 4);
  v11 = *(a3 + 12);
  v12 = sub_100006FC8(v8, v9, v10, v11);
  if (v12)
  {

    return CLDistanceCalc::calculateDistanceVincenty(v12, v8, v9, v10, v11);
  }

  else
  {

    return CLDistanceCalc::calculateDistance(a1, v8, v9, v10, v11, v7);
  }
}

long double CLDistanceCalc::calculateDistance(CLDistanceCalc *a1, uint64_t a2, double a3, double a4)
{
  if (*(a2 + 36) <= 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(a2 + 28);
  }

  return CLDistanceCalc::calculateDistance(a1, *(a2 + 4), *(a2 + 12), a3, a4, v4);
}

BOOL CLDistanceCalc::calculateNewPosUsingAcrossTrack(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6, double *a7, double *a8)
{
  result = 0;
  if (a5 >= 0.0 && a6 <= 50000.0)
  {
    v15 = fabs(a6);
    v16 = __sincos_stret((dbl_10000E460[a6 < 0.0] + a5) * 0.0174532925);
    return CLDistanceCalc::calculateNewPosUsingDelta(this, a2, a3, a4, v15 * v16.__cosval, v15 * v16.__sinval, 0.0, a7, a8, &v17);
  }

  return result;
}

BOOL CLDistanceCalc::calculateNewPosUsingDelta(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6, double a7, double *a8, double *a9, double *a10)
{
  v11 = sqrt(a6 * a6 + a5 * a5);
  if (v11 <= 70000.0)
  {
    if (vabdd_f64(a2, *(this + 3)) <= 0.005)
    {
      v26.f64[0] = *this;
      cosval = *(this + 4);
    }

    else
    {
      *(this + 2) = a2 * 0.0174532925;
      *(this + 3) = a2;
      v22 = __sincos_stret(a2 * 0.0174532925);
      cosval = v22.__cosval;
      v23 = v22.__sinval * -0.00669437999 * v22.__sinval + 1.0;
      v24 = sqrt(v23);
      v25.f64[0] = v23 * v24;
      v25.f64[1] = v24;
      v26 = vdivq_f64(xmmword_10000E450, v25);
      *this = v26;
      *(this + 4) = *&v22.__cosval;
    }

    v27 = v26.f64[0] + a4;
    v28 = 0.0;
    v29 = a5 / v27;
    if (fabs(cosval) >= 0.0001)
    {
      v28 = a6 / (cosval * (*(this + 1) + a4));
    }

    *a8 = a2 + v29 * 57.2957795;
    *a9 = a3 + v28 * 57.2957795;
    *a10 = a4 + a7;
    v30 = *a8;
    if (*a8 > 90.0)
    {
      *a8 = 180.0 - v30;
      *a9 = *a9 + 180.0;
      v30 = *a8;
    }

    if (v30 >= -90.0)
    {
      v31 = *a9;
    }

    else
    {
      *a8 = -180.0 - v30;
      v31 = *a9 + 180.0;
      *a9 = v31;
    }

    if (v31 > -180.0)
    {
      if (v31 <= 180.0)
      {
        return v11 <= 70000.0;
      }
    }

    else
    {
      v31 = v31 + 360.0;
    }

    if (v31 > 180.0)
    {
      v31 = v31 + -360.0;
    }

    *a9 = v31;
  }

  return v11 <= 70000.0;
}

BOOL CLDistanceCalc::calculateNewPosUsingDeltaNoLimit(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6, double a7, double *a8, double *a9, double *a10)
{
  v34 = a3;
  v35 = a2;
  *a8 = 0.0;
  *a9 = 0.0;
  *a10 = 0.0;
  v32 = fabs(a5);
  v33 = a4;
  v31 = fabs(a6);
  v15 = -49000.0;
  if (a5 >= 0.0)
  {
    v16 = 49000.0;
  }

  else
  {
    v16 = -49000.0;
  }

  v28 = v16;
  if (a6 >= 0.0)
  {
    v15 = 49000.0;
  }

  v27 = v15;
  v17 = 0.0;
  v18 = 21;
  v19 = 0.0;
  v20 = 0.0;
  while (1)
  {
    v21 = fabs(v17) >= v32;
    v22 = fabs(v19) >= v31 && v21;
    if (v22)
    {
      break;
    }

    if (vabdd_f64(a5, v17) >= 49000.0)
    {
      v23 = v28;
    }

    else
    {
      v23 = a5 - v17;
    }

    if (vabdd_f64(a6, v19) >= 49000.0)
    {
      v24 = v27;
    }

    else
    {
      v24 = a6 - v19;
    }

    if (CLDistanceCalc::calculateNewPosUsingDelta(this, v35, v34, v33, v23, v24, a7 - v20, &v35, &v34, &v33))
    {
      v20 = v20 + a7 - v20;
      v17 = v17 + v23;
      v19 = v19 + v24;
      if (--v18)
      {
        continue;
      }
    }

    return v22;
  }

  v25 = v34;
  *a8 = v35;
  *a9 = v25;
  *a10 = v33;
  return v22;
}

double CLDistanceCalc::calculateAlongAcrossTrack(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6, double a7, double *a8, double *a9)
{
  v17 = 0.0;
  v18 = 0.0;
  CLDistanceCalc::calculatePosDifference(this, a2, a3, a4, a6, a7, a4, &v18, &v17, &v16);
  v12 = sqrt(v17 * v17 + v18 * v18);
  v13 = atan2(v17, v18);
  v14 = __sincos_stret(v13 + a5 * -0.0174532925);
  *a9 = v12 * v14.__cosval;
  result = v12 * v14.__sinval;
  *a8 = v12 * v14.__sinval;
  return result;
}

void CLDistanceCalc::propagateLocation(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6, double a7, double *a8, double *a9)
{
  v18 = *(this + 3);
  if (v18 == 0.0 || vabdd_f64(a2, v18) > 0.005)
  {
    *(this + 2) = a2 * 0.0174532925;
    *(this + 3) = a2;
    v19 = __sincos_stret(a2 * 0.0174532925);
    v20 = v19.__sinval * -0.00669437999 * v19.__sinval + 1.0;
    v21 = sqrt(v20);
    v22.f64[0] = v20 * v21;
    v22.f64[1] = v21;
    *this = vdivq_f64(xmmword_10000E450, v22);
    *(this + 4) = *&v19.__cosval;
  }

  *a8 = a2;
  *a9 = a3;
  if (fabs(a2) < 90.0 && a5 > 0.0 && a6 > 0.0 && a7 >= 0.0)
  {
    v23 = a5 * a6;
    v24 = __sincos_stret(a7 * 0.0174532925);
    v25 = a3 * 0.0174532925 + v23 * v24.__sinval / ((*(this + 1) + a4) * *(this + 4));
    *a8 = (a2 * 0.0174532925 + v23 * v24.__cosval / (*this + a4)) * 57.2957795;
    v26 = v25 * 57.2957795;
    *a9 = v26;
    v27 = *a8;
    if (*a8 > 90.0)
    {
      *a8 = 180.0 - v27;
      v26 = *a9 + 180.0;
      *a9 = v26;
      v27 = *a8;
    }

    if (v27 < -90.0)
    {
      *a8 = -180.0 - v27;
      v26 = *a9 + 180.0;
      *a9 = v26;
    }

    if (v26 > -180.0)
    {
      if (v26 <= 180.0)
      {
        return;
      }
    }

    else
    {
      v26 = v26 + 360.0;
    }

    if (v26 > 180.0)
    {
      v26 = v26 + -360.0;
    }

    *a9 = v26;
  }
}

uint64_t CLDistanceCalc::calc_dNdE(CLDistanceCalc *this, double a2, double a3, double *a4, double *a5)
{
  v8 = -450.0;
  if (a3 >= -450.0)
  {
    v8 = a3;
    if (a3 > 1000000.0)
    {
      v8 = 1000000.0;
    }
  }

  v9 = *(this + 3);
  if (v9 == 0.0 || vabdd_f64(a2, v9) > 0.005)
  {
    if (fabs(a2) > 90.0)
    {
      return 0;
    }

    *(this + 2) = a2 * 0.0174532925;
    *(this + 3) = a2;
    v11 = __sincos_stret(a2 * 0.0174532925);
    v12 = v11.__sinval * -0.00669437999 * v11.__sinval + 1.0;
    v13 = sqrt(v12);
    v14.f64[0] = v12 * v13;
    v14.f64[1] = v13;
    v15 = vdivq_f64(xmmword_10000E450, v14);
    *this = v15;
    *(this + 4) = *&v11.__cosval;
  }

  else
  {
    v15.f64[0] = *this;
  }

  *a4 = v8 + v15.f64[0];
  v16 = (v8 + *(this + 1)) * *(this + 4);
  if (v16 < 10.0)
  {
    v16 = 10.0;
  }

  *a5 = v16;
  return 1;
}

double CLDistanceCalc::calculatePosDifferenceWithArcMethods(CLDistanceCalc *this, double a2, double a3, double a4, double a5, double a6, double a7, double *a8, double *a9, double *a10)
{
  v15 = 360.0;
  if (a3 < 0.0)
  {
    a3 = a3 + 360.0;
  }

  if (a6 < 0.0)
  {
    a6 = a6 + 360.0;
  }

  v16 = a6 - a3;
  if (v16 > 180.0)
  {
    v15 = -360.0;
LABEL_8:
    v16 = v16 + v15;
    goto LABEL_9;
  }

  if (v16 < -180.0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = (a5 - a2) * 0.0174532925;
  v18 = (a4 + a7) * 0.5;
  v19 = v16 * 0.0174532925;
  v20 = __sincos_stret((a2 + a5) * 0.0174532925 * 0.5);
  v21 = sqrt(v20.__sinval * -0.00669437999 * v20.__sinval + 1.0);
  *this = v17 * (v18 + 6335439.33 / (v21 * (v21 * v21)));
  *a8 = v20.__cosval * (v18 + 6378137.0 / v21) * v19;
  result = a7 - a4;
  *a9 = a7 - a4;
  return result;
}

long double CLDistanceCalc::calculateDistanceHighPrecision(CLDistanceCalc *this, double a2, double a3, double a4, double a5)
{
  v9 = sub_100006FC8(a2, a3, a4, a5);
  if (v9)
  {

    return CLDistanceCalc::calculateDistanceVincenty(v9, a2, a3, a4, a5);
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
    CLDistanceCalc::calculatePosDifferenceWithArcMethods(&v14, a2, a3, 0.0, a4, a5, 0.0, &v13, &v12, v10);
    return sqrt(v13 * v13 + v14 * v14);
  }
}

double CLDistanceCalc::calculateAzimuth(CLDistanceCalc *this, double a2, double a3, double a4, double a5)
{
  if (vabdd_f64(a2, a4) >= 0.00000001 || (v9 = -1.0, vabdd_f64(a3, a5) >= 0.00000001))
  {
    v15[1] = v5;
    v15[2] = v6;
    v15[0] = 0.0;
    __y = 0.0;
    v10 = CLDistanceCalc::calculatePosDifference(this, a2, a3, 0.0, a4, a5, 0.0, v15, &__y, &v13);
    v9 = -1.0;
    if (v10)
    {
      v11 = atan2(__y, v15[0]);
      if (v11 < 0.0)
      {
        v11 = v11 + 6.28318531;
      }

      return v11 * 57.2957795;
    }
  }

  return v9;
}

void sub_1000082DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100008320(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008338(uint64_t a1, void *a2)
{
  v30 = a2;
  if (v30)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v30 roadID]);
    [v3 setValue:v4 forKey:@"roadID"];

    v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 roadClass]);
    [v3 setValue:v5 forKey:@"roadClass"];

    v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 formOfWay]);
    [v3 setValue:v6 forKey:@"formOfWay"];

    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 travelDirection]);
    [v3 setValue:v7 forKey:@"travelDirection"];

    v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 rampType]);
    [v3 setValue:v8 forKey:@"rampType"];

    v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 speedLimit]);
    [v3 setValue:v9 forKey:@"speedLimit"];

    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 isDrivable]);
    [v3 setValue:v10 forKey:@"isDrivable"];

    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 isRoadPedestrianNavigable]);
    [v3 setValue:v11 forKey:@"isRoadPedestrianNavigable"];

    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 isTunnel]);
    [v3 setValue:v12 forKey:@"isTunnel"];

    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 isBridge]);
    [v3 setValue:v13 forKey:@"isBridge"];

    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 isRail]);
    [v3 setValue:v14 forKey:@"isRail"];

    v15 = [v30 startJunction];
    v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 junctionIndex]);
    [v3 setValue:v16 forKey:@"startJunction"];

    v17 = [v30 endJunction];
    v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 junctionIndex]);
    [v3 setValue:v18 forKey:@"stopJunction"];

    v19 = [v30 startJunction];
    v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 isOnTileBorder]);
    [v3 setValue:v20 forKey:@"startTileBorder"];

    v21 = [v30 endJunction];
    v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v21 isOnTileBorder]);
    [v3 setValue:v22 forKey:@"endTileBorder"];

    v23 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 bikeableSide]);
    [v3 setValue:v23 forKey:@"bikeableSide"];

    v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 walkableSide]);
    [v3 setValue:v24 forKey:@"walkableSide"];

    v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 coordinateCount]);
    [v3 setValue:v25 forKey:@"coordinateCount"];

    v26 = 0;
    for (i = 0; [v30 coordinateCount] > i; ++i)
    {
      v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.7lf,%.7lf,%.2lf", *([v30 coordinates3d] + v26), *(objc_msgSend(v30, "coordinates3d") + v26 + 8), *(objc_msgSend(v30, "coordinates3d") + v26 + 16));
      v29 = [NSString stringWithFormat:@"coord%d", i];
      [v3 setValue:v28 forKey:v29];

      v26 += 24;
    }

    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void sub_10000895C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = [v3 code];
    v5 = [v10 domain];
    v6 = [v10 localizedDescription];
    NSLog(@"CLTSP,CLMM,MapHelperService,GEOMapFeatureAccessRequest reported errorcode,%lld,domain,%@,description,%@", v4, v5, v6);
  }

  else
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
  }

  (*(*(a1 + 40) + 16))();
  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 32) + 16) clearRoadTiles];
  }

  *(*(a1 + 32) + 48) = 0;
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = 0;
}

void sub_100008D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100008D60(uint64_t a1, void *a2)
{
  v27 = a2;
  if (v27)
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v27 buildingID]);
    [v24 setValue:v3 forKey:@"buildingID"];

    v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v27 tileSetStyle]);
    [v24 setValue:v4 forKey:@"tileSetStyle"];

    v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v27 hasTerrainElevation]);
    [v24 setValue:v5 forKey:@"hasTerrainElevation"];

    v23 = a1;
    v25 = objc_alloc_init(NSMutableArray);
    [v24 setValue:? forKey:?];
    for (i = 0; ; i = v26 + 1)
    {
      v7 = [v27 sections];
      v8 = [v7 count];

      if (v8 <= i)
      {
        break;
      }

      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = [v27 sections];
      v26 = i;
      v11 = [v10 objectAtIndexedSubscript:i];

      if (v11)
      {
        [v11 maxBaseHeight];
        v12 = [NSNumber numberWithDouble:?];
        [v9 setValue:v12 forKey:@"maxBaseHeight"];

        [v11 minBaseHeight];
        v13 = [NSNumber numberWithDouble:?];
        [v9 setValue:v13 forKey:@"minBaseHeight"];

        [v11 topHeight];
        v14 = [NSNumber numberWithDouble:?];
        [v9 setValue:v14 forKey:@"topHeight"];

        [v11 terrainElevation];
        v15 = [NSNumber numberWithDouble:?];
        [v9 setValue:v15 forKey:@"terrainElevation"];

        [v11 height];
        v16 = [NSNumber numberWithDouble:?];
        [v9 setValue:v16 forKey:@"height"];

        [v11 baseHeight];
        v17 = [NSNumber numberWithDouble:?];
        [v9 setValue:v17 forKey:@"baseHeight"];

        v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 coordinateCount]);
        [v9 setValue:v18 forKey:@"coordinateCount"];

        v19 = 0;
        for (j = 0; [v11 coordinateCount] > j; ++j)
        {
          v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.7lf,%.7lf", *([v11 coordinates] + v19), *(objc_msgSend(v11, "coordinates") + v19 + 8));
          v22 = [NSString stringWithFormat:@"coord%d", j];
          [v9 setValue:v21 forKey:v22];

          v19 += 16;
        }
      }

      [v25 addObject:v9];
    }

    [*(*(*(v23 + 32) + 8) + 40) addObject:v24];
  }
}

void sub_10000922C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = *(a1 + 64);
    v5 = [v3 code];
    v6 = [v10 domain];
    v7 = [v10 localizedDescription];
    NSLog(@"CLTSP,CLMM,GEOMapFeatureAccessRequest,tileStyle,%1d,reported errorcode,%lld,domain,%@,description,%@", v4, v5, v6, v7);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    NSLog(@"CLTSP,CLGEOMapHelperService,fetchGEOBuildingDataAroundCoordinate,tileStyle,%1d,repliedWithCount,%d,elapsedTime,%.2lf", *(a1 + 64), [*(*(*(a1 + 48) + 8) + 40) count], (Current - *(*(*(a1 + 56) + 8) + 24)) * 1000.0);
    v9 = *(*(*(a1 + 48) + 8) + 40);
  }

  (*(*(a1 + 40) + 16))();
  if (*(a1 + 68) == 1)
  {
    [*(*(a1 + 32) + 16) clearBuildingTiles];
  }
}

void sub_1000097D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_100009828(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100009890(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = [v8 code];
    v4 = [v8 domain];
    v5 = [v8 localizedDescription];
    NSLog(@"CLTSP,CLMM,MapHelperService,GEOMapFeatureAccessRequest reported errorcode,%lld,domain,%@,description,%@", v3, v4, v5);

    [*(a1 + 32) removeAllObjects];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 40) + 16) clearRoadTiles];
  }

  *(*(a1 + 40) + 48) = 0;
  v6 = *(a1 + 40);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 40));
}

void sub_100009CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, char a30)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v33 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_100009D4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v4 = v3;
    if ([v4 isDrivable] && (objc_msgSend(v4, "travelDirection") == 1 || !objc_msgSend(v4, "travelDirection")))
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
    }

    v3 = v5;
  }
}

void sub_100009DEC(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    if (*(*(a1 + 32) + 50) == 1)
    {
      v3 = [v8 code];
      v4 = [v8 domain];
      v5 = [v8 localizedDescription];
      NSLog(@"CLTSP,CLMM,MapHelperService,GEOMapFeatureAccessRequest reported errorcode,%lld,domain,%@,description,%@", v3, v4, v5);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 32) + 16) clearRoadTiles];
  }

  *(*(a1 + 32) + 48) = 0;
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

void sub_10000A794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char **__p, char **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  __p = &a24;
  sub_100001D20(&__p);
  a24 = &a27;
  sub_100001D20(&a24);

  _Unwind_Resume(a1);
}

void sub_10000A82C(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_100001DC0();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10000C658(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_10000C298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, void *a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, char a53, void *a54, uint64_t a55, char a56, void *a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000C73C(&a48, a49);
  if (a52)
  {
    sub_100001F6C(a52);
  }

  sub_10000C73C(&a53, a54);
  sub_10000C790(&a56, a57);
  if (a67)
  {
    sub_100001F6C(a67);
  }

  if (a71)
  {
    sub_100001F6C(a71);
  }

  a59 = &a72;
  sub_100001D20(&a59);
  if (STACK[0x220])
  {
    sub_100001F6C(STACK[0x220]);
  }

  if (STACK[0x238])
  {
    sub_100001F6C(STACK[0x238]);
  }

  _Unwind_Resume(a1);
}

double sub_10000C4E4(uint64_t a1, unint64_t ***a2)
{
  v2 = *a2;
  v3 = -1.0;
  if (*a2 && *v2 && sub_100002940(a1, *v2))
  {
    return *(sub_10000C6A0(a1, **a2) + 48);
  }

  return v3;
}

uint64_t sub_10000C564(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*v2)
    {
      v3 = *(v2 + 48) + *(v2 + 56);
      result = sub_10000C6A0(result, *v2);
      *(result + 48) = v3;
    }
  }

  return result;
}

void sub_10000C658(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100001EB0();
}

uint64_t sub_10000C6A0(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_1000028C0(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_10000C73C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000C73C(a1, *a2);
    sub_10000C73C(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10000C790(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000C790(a1, *a2);
    sub_10000C790(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_100001F6C(v4);
    }

    operator delete(a2);
  }
}

void sub_10000C8C8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1000146A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10000C91C(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 168) = v4;
    operator delete(v4);
  }

  if (*(a1 + 95) < 0)
  {
    v5 = *(a1 + 72);

    operator delete(v5);
  }
}

void sub_10000C9B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1000146F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10000CA18(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10000CA98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CAAC(va);
  _Unwind_Resume(a1);
}

CLRouteRoad **sub_10000CAAC(CLRouteRoad **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CLRouteRoad::~CLRouteRoad(v2);
    operator delete();
  }

  return a1;
}

void sub_10000CAF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

CLRouteRoad *sub_10000CB30(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CLRouteRoad::~CLRouteRoad(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10000CB74(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10000CBB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_10000CC08(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_1000028C0(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}