void sub_19B99EC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x238])
  {
    sub_19B8750F8(STACK[0x238]);
  }

  a69 = &a49;
  sub_19B8F0E84(&a69);
  if (a40)
  {
    sub_19B8750F8(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B99EE80(std::string *a1, const std::string *a2)
{
  v2 = a2;
  v3 = a1;
  v25 = *MEMORY[0x1E69E9840];
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2->__r_.__value_.__l.__size_;
  }

  if (size != v6)
  {
    goto LABEL_12;
  }

  if (v4 < 0)
  {
    a1 = a1->__r_.__value_.__r.__words[0];
  }

  v8 = a2->__r_.__value_.__r.__words[0];
  if (v7 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  result = memcmp(a1, a2, size);
  if (result)
  {
LABEL_12:
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v10 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v11 = v3;
      if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
      {
        v11 = v3->__r_.__value_.__r.__words[0];
      }

      if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = v2->__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v11;
      v23 = 2082;
      v24 = v12;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "CLTSP,reset routebuilder,prevTrip,%{public}s,newTrip,%{public}s", buf, 0x16u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
      {
        v14 = v3->__r_.__value_.__r.__words[0];
      }

      if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v2->__r_.__value_.__r.__words[0];
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::reset(const std::string &)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    std::string::operator=(v3, v2);
    data = v3[1].__r_.__value_.__l.__data_;
    v18 = v3[1].__r_.__value_.__l.__size_;
    while (v18 != data)
    {
      v18 -= 24;
      *buf = v18;
      sub_19B8F0E84(buf);
    }

    v3[1].__r_.__value_.__l.__size_ = data;
    v20 = v3[2].__r_.__value_.__l.__data_;
    for (i = v3[2].__r_.__value_.__l.__size_; i != v20; sub_19B9A3DF8(i))
    {
      i -= 10;
    }

    v3[2].__r_.__value_.__l.__size_ = v20;
    v3[3].__r_.__value_.__r.__words[0] = 0;
    result = [v3[5].__r_.__value_.__l.__data_ removeAllObjects];
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B99F158(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    v4 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v5 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v14 = a1;
      v15 = 1026;
      v16 = a2;
      v17 = 1026;
      v18 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "CLTSP,userDefaults read for key,%{public}@,defaultValue,%{public}d,readValue,%{public}d", buf, 0x18u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::getUserDefaultsBoolForKey(NSString * _Nonnull, const BOOL)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v8 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = a1;
      v15 = 1026;
      v16 = a2;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLTSP,userDefaults not found for key,%{public}@,defaultValue,%{public}d", buf, 0x12u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::getUserDefaultsBoolForKey(NSString * _Nonnull, const BOOL)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v4 = a2;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19B99F500(std::mutex *a1, void **a2)
{
  std::mutex::lock(a1);
  if (sub_19B95D1AC(a1, a2) && (v4 = sub_19B95D310(&a1[1], a2), sub_19B9A348C((*(v4 + 56) + 32))))
  {
    sub_19B95E280(a1, a2, 4);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock(a1);
  return v5;
}

uint64_t sub_19B99F5B0(uint64_t a1, void *a2, int a3, int a4, double a5, double a6, double a7)
{
  v36 = *MEMORY[0x1E69E9840];
  if ([a2 count] <= a3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v19 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "CLTSP,locationIndex over number of entries in sparseLocations", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v21 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentUtilities::CLGPSFixTracker::canUseThisFix(NSArray<CLTripSegmentLocation *> * _Nonnull, int, const double, const BOOL, const double, const double)", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    result = 0;
  }

  else
  {
    v14 = a3;
    v15 = [a2 objectAtIndexedSubscript:a3];
    [objc_msgSend(v15 "timestamp")];
    v17 = v16;
    if ([v15 isGPSLocationType])
    {
      *a1 = v17;
      *(a1 + 8) = v15;
      result = 1;
    }

    else
    {
      v22 = vabdd_f64(v17, *a1);
      v23 = *a1 > 0.0 && v22 < a5;
      if (v23 || *a1 > 0.0 && (v22 >= 0.0 ? (v24 = v22 < a6) : (v24 = 0), v24 && ([v15 distanceFromLocation:*(a1 + 8)], v25 < a7)))
      {
        v26 = 1;
      }

      else
      {
        do
        {
          if ([a2 count] <= ++v14)
          {
            v26 = 0;
            goto LABEL_41;
          }

          v27 = [a2 objectAtIndexedSubscript:v14];
          if (a4)
          {
            v28 = [v27 isGoodGPSFixWithGoodCourse];
          }

          else
          {
            v28 = [v27 isGoodGPSFix];
          }

          v29 = v28;
        }

        while (![objc_msgSend(a2 objectAtIndexedSubscript:{v14), "isGPSLocationType"}] || !v29);
        [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{v14), "timestamp"), "timeIntervalSinceReferenceDate"}];
        v31 = vabdd_f64(v17, v30);
        v26 = v31 < a5;
        if (v31 < a6 && v31 >= a5)
        {
          [v15 distanceFromLocation:{objc_msgSend(a2, "objectAtIndexedSubscript:", v14)}];
          v26 = v33 < a7;
        }
      }

LABEL_41:
      result = !v26;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B99F8CC(uint64_t a1, int a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t ***a5, uint64_t **a6, uint64_t a7, void ***a8)
{
  v179 = *MEMORY[0x1E69E9840];
  if (*a6 == a6[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v26 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLTSP,generateAndCombineRoute,empty snap vector,runIndex,%{public}d", buf, 8u);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
    {
      goto LABEL_265;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    *v172 = 67240192;
    v28 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateAndCombineRouteForOneSegment(BOOL, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, int, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v28);
LABEL_50:
    if (v28 != buf)
    {
      free(v28);
    }

    goto LABEL_265;
  }

  v8 = **a6;
  if (!v8)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v29 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLTSP,generateAndCombineRoute,null front snap,runIndex,%{public}d", buf, 8u);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      goto LABEL_265;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    *v172 = 67240192;
    v28 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::generateAndCombineRouteForOneSegment(BOOL, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, int, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v28);
    goto LABEL_50;
  }

  v10 = a6;
  v12 = *(v8 + 16);
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *a8;
  for (i = a8[1]; i != v14; sub_19B9A3DF8(i))
  {
    i -= 10;
  }

  a8[1] = v14;
  v145 = a5;
  if (*a5 == a5[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v31 = a4;
    v32 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v12;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,null or empty lastSnapVectorPointer", buf, 0xCu);
    }

    v33 = sub_19B87DD40();
    if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 == -1)
      {
LABEL_71:
        *v172 = 134349056;
        *&v172[4] = v12;
        v36 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }

        goto LABEL_73;
      }

LABEL_282:
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      goto LABEL_71;
    }

LABEL_73:
    v37 = 0;
    if (!v31)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (*v10 == v10[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v31 = a4;
    v34 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v12;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,null or empty crntSnapVectorPointer", buf, 0xCu);
    }

    v35 = sub_19B87DD40();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 == -1)
      {
        goto LABEL_71;
      }

      goto LABEL_282;
    }

    goto LABEL_73;
  }

  v173 = 0;
  v177 = 0;
  memset(v172, 0, 36);
  v176 = 0;
  v175 = 0;
  v174 = *(a1 + 129);
  if (*(a1 + 128) == 1)
  {
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    if (v15 == v16)
    {
      v25 = 0;
    }

    else
    {
      v152 = v10;
      do
      {
        v17 = v15[1];
        if (*v15 != v17)
        {
          v18 = *(v17 - 16);
          if (v18)
          {
            v19 = *(v18 + 48);
            v20 = *(v18 + 56);
            while (v19 != v20)
            {
              v21 = *v19;
              if (*v19)
              {
                for (j = *a5; j != a5[1]; j += 2)
                {
                  v23 = *j;
                  if (*j)
                  {
                    v24 = *v23;
                    if (*v23)
                    {
                      if (*v24 == *v21 && v24[1] == v21[1])
                      {
                        operator new();
                      }
                    }
                  }
                }
              }

              v19 += 2;
            }
          }
        }

        v15 += 10;
      }

      while (v15 != v16);
      v25 = v166;
      v10 = v152;
    }

    v167 = v25;
    v67 = *buf;
    if (*buf != &buf[8])
    {
      do
      {
        sub_19B8EAB68(&v166, v67 + 3);
        v68 = *(v67 + 1);
        if (v68)
        {
          do
          {
            v69 = v68;
            v68 = *v68;
          }

          while (v68);
        }

        else
        {
          do
          {
            v69 = *(v67 + 2);
            v112 = *v69 == v67;
            v67 = v69;
          }

          while (!v112);
        }

        v67 = v69;
      }

      while (v69 != &buf[8]);
    }

    sub_19B9A4348(*&buf[8]);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v70 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v71 = (a5[1] - *a5) >> 4;
      *buf = 134349568;
      *&buf[4] = v12;
      *&buf[12] = 2050;
      *&buf[14] = v71;
      *&buf[22] = 2050;
      *&buf[24] = (v167 - v166) >> 4;
      _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generatedPreferredSnap,allCount,%{public}lu,preferredCount,%{public}lu", buf, 0x20u);
    }

    v72 = sub_19B87DD40();
    if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v73 = (a5[1] - *a5) >> 4;
      LODWORD(v169[0]) = 134349568;
      *(v169 + 4) = v12;
      WORD2(v169[1]) = 2050;
      *(&v169[1] + 6) = v73;
      HIWORD(v169[2]) = 2050;
      v170[0] = (v167 - v166) >> 4;
      v74 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v74);
      if (v74 != buf)
      {
        free(v74);
      }
    }

    v75 = v166;
    v76 = v167;
    if (v166 != v167)
    {
      v165[0] = a3;
      v165[1] = a4;
      if (a4)
      {
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_19B9A1C30(a1, v165, v75, v76, v10, v12);
      if (a4)
      {
        sub_19B8750F8(a4);
        v163 = a3;
        v164 = a4;
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v163 = a3;
        v164 = 0;
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19B9A26B0(qword_1EAFE5B10, a1, &v161);
      sub_19B9ACFD0(v172, &v163, &v161, &v166, v10, a7);
      if (v162)
      {
        sub_19B8750F8(v162);
      }

      if (v164)
      {
        sub_19B8750F8(v164);
      }
    }

    *buf = &v166;
    sub_19B8F0E84(buf);
  }

  if (*a7 == *(a7 + 8))
  {
    if (*(a1 + 128) == 1)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v77 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = v12;
        _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,unable to generate route candidates using preferred snaps, generating using all", buf, 0xCu);
      }

      v78 = sub_19B87DD40();
      if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        LODWORD(v169[0]) = 134349056;
        *(v169 + 4) = v12;
        v79 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v79);
        if (v79 != buf)
        {
          free(v79);
        }
      }
    }

    v160[0] = a3;
    v160[1] = a4;
    if (a4)
    {
      atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B9A1C30(a1, v160, *a5, a5[1], v10, v12);
    if (a4)
    {
      sub_19B8750F8(a4);
      v158 = a3;
      v159 = a4;
      atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v158 = a3;
      v159 = 0;
    }

    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9A26B0(qword_1EAFE5B10, a1, &v156);
    sub_19B9ACFD0(v172, &v158, &v156, a5, v10, a7);
    if (v157)
    {
      sub_19B8750F8(v157);
    }

    if (v159)
    {
      sub_19B8750F8(v159);
    }
  }

  v80 = *(a7 + 8);
  v141 = *a7 != v80;
  if (*a7 == v80)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v128 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v12;
      _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,unable to generate route candidates", buf, 0xCu);
    }

    v129 = sub_19B87DD40();
    if (*(v129 + 160) > 1 || *(v129 + 164) > 1 || *(v129 + 168) > 1 || *(v129 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      LODWORD(v169[0]) = 134349056;
      *(v169 + 4) = v12;
      v130 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v130);
      if (v130 != buf)
      {
        free(v130);
      }
    }
  }

  else
  {
    v82 = *(a1 + 48);
    v81 = *(a1 + 56);
    if (v82 != v81)
    {
      v143 = *(a1 + 56);
      do
      {
        v83 = v82[1];
        if (*v82 != v83)
        {
          v84 = *(v83 - 16);
          if (v84)
          {
            v86 = *(v84 + 48);
            v85 = *(v84 + 56);
            if (v86 != v85)
            {
              v87 = *(v85 - 8);
              v155[0] = *(v85 - 16);
              v155[1] = v87;
              if (v87)
              {
                atomic_fetch_add_explicit((v87 + 8), 1uLL, memory_order_relaxed);
              }

              v144 = v87;
              v89 = *a7;
              v88 = *(a7 + 8);
              v149 = v88;
              if (*a7 != v88)
              {
                do
                {
                  v90 = *v89;
                  if (*v89)
                  {
                    v92 = *(v90 + 48);
                    v91 = *(v90 + 56);
                    if (v92 != v91)
                    {
                      v94 = *v92;
                      v93 = *(v92 + 8);
                      v154[0] = v94;
                      v154[1] = v93;
                      if (v93)
                      {
                        atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
                        v91 = *(v90 + 56);
                      }

                      v153 = v93;
                      v95 = *(v91 - 8);
                      if (v95)
                      {
                        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
                        v91 = *(v90 + 56);
                      }

                      v151 = v95;
                      v96 = *(v90 + 48);
                      v97 = (v91 - v96) >> 4;
                      v98 = sub_19B9A49BC(v82, v97);
                      v99 = *v82;
                      v100 = (v82[1] - *v82) >> 4;
                      if (v100 > v98)
                      {
                        v101 = v98;
                        v102 = v98;
                        v103 = sub_19B9A4A60(v82, v98) - v97 + ((*(*(v99 + 16 * v102) + 56) - *(*(v99 + 16 * v102) + 48)) >> 4);
                        v104 = -1;
                        do
                        {
                          v105 = *(v99 + 16 * v102);
                          if (v105)
                          {
                            v107 = v105 + 48;
                            v106 = *(v105 + 48);
                            v108 = *(v107 + 8) - v106;
                            if ((v108 >> 4) >= 1)
                            {
                              v109 = 0;
                              v110 = (v108 >> 4) & 0x7FFFFFFF;
                              while (1)
                              {
                                v111 = *v106;
                                v112 = !*v106 || v94 == 0;
                                if (!v112 && *v111 == *v94 && v111[1] == v94[1] && v109 >= v103)
                                {
                                  break;
                                }

                                ++v109;
                                v106 += 2;
                                if (v110 == v109)
                                {
                                  goto LABEL_217;
                                }
                              }

                              v104 = v109;
                            }

LABEL_217:
                            if (v104 < 0)
                            {
                              v103 = 0;
                            }

                            v101 += v104 >> 31;
                          }

                          ++v102;
                        }

                        while (v102 != v100);
                        if ((v101 & 0x80000000) == 0 && (v104 & 0x80000000) == 0)
                        {
                          if (v100 <= v101)
                          {
                            goto LABEL_238;
                          }

                          v114 = 0;
                          v115 = 0;
                          v116 = 1;
                          v117 = v101;
                          do
                          {
                            v118 = *(v99 + 16 * v117);
                            if (v118)
                            {
                              v119 = *(v118 + 48);
                              v120 = (*(v118 + 56) - v119) >> 4;
                              if (v104 < v120)
                              {
                                v115 = v115 - v104 + v120;
                                v121 = v114 - v104 + v120;
                                v122 = (v96 + 16 * v114);
                                v123 = (v119 + 16 * v104);
                                v124 = v104;
                                while (1)
                                {
                                  v125 = *v123;
                                  if (!*v123)
                                  {
                                    break;
                                  }

                                  v126 = *v122;
                                  if (!*v122 || *v125 != *v126 || v125[1] != v126[1])
                                  {
                                    break;
                                  }

                                  ++v114;
                                  v122 += 2;
                                  ++v124;
                                  v123 += 2;
                                  if (v124 >= v120)
                                  {
                                    v114 = v121;
                                    goto LABEL_235;
                                  }
                                }

                                v116 = 0;
                                v115 = 0;
                              }
                            }

LABEL_235:
                            ++v117;
                          }

                          while (v117 != v100);
                          if (v116)
                          {
                            goto LABEL_238;
                          }
                        }
                      }

                      if (sub_19B8ED778(a3, v155, v154, 0))
                      {
LABEL_238:
                        memset(v169, 0, sizeof(v169));
                        sub_19B9A4150(v169, *v82, v82[1], (v82[1] - *v82) >> 4);
                        memset(v170, 0, sizeof(v170));
                        sub_19B9A3028(v170, v82[3], v82[4], (v82[4] - v82[3]) >> 4);
                        memset(v171, 0, 24);
                        sub_19B9A3028(v171, v82[6], v82[7], (v82[7] - v82[6]) >> 4);
                        v171[3] = v82[9];
                        v127 = *v89;
                        operator new();
                      }

                      if (v151)
                      {
                        sub_19B8750F8(v151);
                      }

                      if (v153)
                      {
                        sub_19B8750F8(v153);
                      }

                      v88 = v149;
                    }
                  }

                  ++v89;
                }

                while (v89 != v88);
              }

              if (v144)
              {
                sub_19B8750F8(v144);
              }

              v81 = v143;
            }
          }
        }

        v82 += 10;
      }

      while (v82 != v81);
    }
  }

  *buf = v172;
  sub_19B8F0E84(buf);
  v31 = a4;
  v37 = v141;
  if (a4)
  {
LABEL_74:
    sub_19B8750F8(v31);
  }

LABEL_75:
  if (!v37)
  {
LABEL_265:
    result = 0;
    goto LABEL_266;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
  }

  v38 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    v39 = (**v145)[2];
    v40 = (*(a7 + 8) - *a7) >> 4;
    *buf = 134349824;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = 0;
    *&buf[18] = 2050;
    *&buf[20] = v39;
    *&buf[28] = 2050;
    *&buf[30] = v40;
    _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateAndCombineRoute,runIndex,%{public}d,prevTime,%{public}.1lf,numCandidates,%{public}lu", buf, 0x26u);
  }

  v41 = sub_19B87DD40();
  if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v42 = (**v145)[2];
    v43 = (*(a7 + 8) - *a7) >> 4;
    *v172 = 134349824;
    *&v172[4] = v12;
    *&v172[12] = 1026;
    *&v172[14] = 0;
    *&v172[18] = 2050;
    *&v172[20] = v42;
    *&v172[28] = 2050;
    *&v172[30] = v43;
    v44 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateAndCombineRouteForOneSegment(BOOL, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, int, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  if (*(a1 + 76) != 1)
  {
LABEL_281:
    result = 1;
    goto LABEL_266;
  }

  v45 = *a7;
  v46 = *(a7 + 8);
  v47 = *a7;
  result = 1;
  if (*a7 != v46 && a2)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *v47;
      v56 = *(*v47 + 56);
      if (*(*v47 + 48) == v56 || (v57 = *(v56 - 16)) == 0)
      {
        v55 = v52;
      }

      else if (v52)
      {
        if (*v52 <= *v55)
        {
          v55 = v52;
        }

        else
        {
          v50 = *(v47 + 1);
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v51)
          {
            sub_19B8750F8(v51);
          }

          v49 = v55;
          v51 = v50;
        }

        if (v53 != *v57 || v54 != v57[1])
        {
          goto LABEL_279;
        }
      }

      else
      {
        v53 = *v57;
        v54 = v57[1];
        v50 = *(v47 + 1);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v51)
        {
          sub_19B8750F8(v51);
        }

        v49 = v55;
        v51 = v50;
      }

      ++v47;
      v52 = v55;
    }

    while (v47 != v46);
    if (v49)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v58 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v59 = (**v145)[2];
        *buf = 134349312;
        *&buf[4] = v12;
        *&buf[12] = 2050;
        *&buf[14] = v59;
        _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateAndCombineRoute,prevTime,%{public}.1lf,reduced size to 1 route", buf, 0x16u);
      }

      v60 = sub_19B87DD40();
      if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v61 = (**v145)[2];
        *v172 = 134349312;
        *&v172[4] = v12;
        *&v172[12] = 2050;
        *&v172[14] = v61;
        v62 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateAndCombineRouteForOneSegment(BOOL, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, int, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v62);
        if (v62 != buf)
        {
          free(v62);
        }
      }

      sub_19B8EBC04(a7);
      v63 = *(a7 + 8);
      v64 = *(a7 + 16);
      if (v63 >= v64)
      {
        v132 = (v63 - *a7) >> 4;
        v133 = v132 + 1;
        if ((v132 + 1) >> 60)
        {
          sub_19B8B8A40();
        }

        v134 = v64 - *a7;
        if (v134 >> 3 > v133)
        {
          v133 = v134 >> 3;
        }

        if (v134 >= 0x7FFFFFFFFFFFFFF0)
        {
          v135 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v135 = v133;
        }

        *&buf[32] = a7;
        if (v135)
        {
          sub_19B8F0D38(a7, v135);
        }

        v136 = (16 * v132);
        *v136 = v49;
        v136[1] = v50;
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v65 = v136 + 2;
        v66 = a7;
        v137 = *(a7 + 8) - *a7;
        v138 = v136 - v137;
        memcpy(v136 - v137, *a7, v137);
        v139 = *a7;
        *a7 = v138;
        *(a7 + 8) = v65;
        v140 = *(a7 + 16);
        *(a7 + 16) = 0;
        *&buf[16] = v139;
        *&buf[24] = v140;
        *buf = v139;
        *&buf[8] = v139;
        sub_19B8F10D0(buf);
      }

      else
      {
        *v63 = v49;
        v63[1] = v50;
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v65 = v63 + 2;
        v66 = a7;
      }

      *(v66 + 8) = v65;
    }

LABEL_279:
    if (v50)
    {
      sub_19B8750F8(v50);
    }

    goto LABEL_281;
  }

LABEL_266:
  v131 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9A172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a28)
  {
    sub_19B8750F8(a28);
  }

  sub_19B9A1BD8(&a49);
  if (a25)
  {
    sub_19B8750F8(a25);
  }

  if (a26)
  {
    sub_19B8750F8(a26);
  }

  if (a15)
  {
    sub_19B8750F8(a15);
  }

  a69 = &a59;
  sub_19B8F0E84(&a69);
  if (a18)
  {
    sub_19B8750F8(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B9A18F8(void ***a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    if (v8 + 1 > 0x333333333333333)
    {
      sub_19B8B8A40();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x199999999999999)
    {
      v11 = 0x333333333333333;
    }

    else
    {
      v11 = v10;
    }

    v23 = a1;
    if (v11)
    {
      sub_19B9A3C74(v11);
    }

    v12 = 80 * v8;
    v19 = 0;
    v20 = v12;
    v21 = v12;
    v22 = 0;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    sub_19B9A4150(v12, *a2, a2[1], (a2[1] - *a2) >> 4);
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    sub_19B9A3028(v12 + 24, a2[3], a2[4], (a2[4] - a2[3]) >> 4);
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    sub_19B9A3028(v12 + 48, a2[6], a2[7], (a2[7] - a2[6]) >> 4);
    *(v12 + 72) = a2[9];
    v7 = (v21 + 80);
    v21 += 80;
    v13 = *a1;
    v14 = a1[1];
    v15 = (v20 + *a1 - v14);
    if (*a1 != v14)
    {
      v16 = (v20 + *a1 - v14);
      v17 = *a1;
      do
      {
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        *v16 = *v17;
        v16[2] = v17[2];
        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        v16[3] = 0;
        v16[4] = 0;
        v16[5] = 0;
        *(v16 + 3) = *(v17 + 3);
        v16[5] = v17[5];
        v17[3] = 0;
        v17[4] = 0;
        v17[5] = 0;
        v16[6] = 0;
        v16[7] = 0;
        v16[8] = 0;
        *(v16 + 3) = *(v17 + 3);
        v16[8] = v17[8];
        v17[6] = 0;
        v17[7] = 0;
        v17[8] = 0;
        v16[9] = v17[9];
        v17 += 10;
        v16 += 10;
      }

      while (v17 != v14);
      do
      {
        sub_19B9A3DF8(v13);
        v13 += 10;
      }

      while (v13 != v14);
      v13 = *a1;
      v7 = v21;
    }

    *a1 = v15;
    a1[1] = v7;
    v18 = a1[2];
    a1[2] = v22;
    v21 = v13;
    v22 = v18;
    v19 = v13;
    v20 = v13;
    result = sub_19B9A4100(&v19);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    sub_19B9A4150(v5, *a2, a2[1], (a2[1] - *a2) >> 4);
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = 0;
    sub_19B9A3028((v5 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 4);
    v5[6] = 0;
    v5[7] = 0;
    v5[8] = 0;
    result = sub_19B9A3028((v5 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 4);
    v5[9] = a2[9];
    v7 = v5 + 10;
    a1[1] = v5 + 10;
  }

  a1[1] = v7;
  return result;
}

void sub_19B9A1B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_19B8F0E84(&a14);
  sub_19B8F0E84(&a14);
  sub_19B9A4100(&a9);
  _Unwind_Resume(a1);
}

void **sub_19B9A1BD8(void **a1)
{
  v3 = a1 + 6;
  sub_19B8F0E84(&v3);
  v3 = a1 + 3;
  sub_19B8F0E84(&v3);
  v3 = a1;
  sub_19B8F0E84(&v3);
  return a1;
}

void sub_19B9A1C30(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, void **a5, double a6)
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v17 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = a6;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,geometry is nil", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      goto LABEL_105;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
LABEL_103:
      *v61 = 134349056;
      *&v61[4] = a6;
      v57 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::addExtraFreewayCandidateInWiderRadius(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }

      goto LABEL_105;
    }

LABEL_108:
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    goto LABEL_103;
  }

  v10 = *a5 == a5[1] || a3 == a4;
  if (v10 || (v11 = **a5) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v15 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = a6;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,crntSnapVector or lastSnapVector is empty", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
    {
      goto LABEL_105;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_103;
    }

    goto LABEL_108;
  }

  while (1)
  {
    v13 = **a3;
    if (v13)
    {
      if (!*(v13 + 20))
      {
        break;
      }
    }

    a3 += 2;
    if (a3 == a4)
    {
      v14 = 0;
      goto LABEL_32;
    }
  }

  v14 = 1;
LABEL_32:
  v19 = *(v11 + 120);
  v20 = v19 > 9 || ((1 << v19) & 0x20A) == 0;
  if (v20 || *(v11 + 152) <= 45.0)
  {
    if (v19 == 4 || v19 == 11)
    {
      v26 = v14;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
LABEL_49:
      v27 = *(v8 + 208);
      v59 = 0uLL;
      v60 = 0;
      if (v27 < 250.0)
      {
        *(v8 + 208) = 0x406F400000000000;
        if (!sub_19B8E83FC(v8, 1, &v59, 0, *(**a5 + 16), *(**a5 + 128), *(**a5 + 136), *(**a5 + 144), 60.0, 30.0))
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v28 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            *&buf[4] = a6;
            _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,unable to compute freeway candidates for WiFi position", buf, 0xCu);
          }

          v29 = sub_19B87DD40();
          if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            *v61 = 134349056;
            *&v61[4] = a6;
            v30 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::addExtraFreewayCandidateInWiderRadius(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v30);
            if (v30 != buf)
            {
              free(v30);
            }
          }
        }

        *(*a2 + 208) = v27;
        v31 = *(&v59 + 1);
        for (i = v59; i != v31; ++i)
        {
          v33 = **i;
          if (v33 && !*(v33 + 20))
          {
            for (j = *a5; j != a5[1]; j += 2)
            {
              v35 = **j;
              if (v35 && *v33 == *v35 && *(v33 + 8) == v35[1])
              {
                goto LABEL_84;
              }
            }

            sub_19B8EAB68(a5, i);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            v36 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
            {
              v37 = **a5;
              v38 = v37[16];
              v39 = v37[17];
              v40 = v37[18];
              v41 = *(*i + 24);
              v42 = *(*i + 32);
              v43 = *(*i + 40);
              *buf = 134350593;
              *&buf[4] = a6;
              *&buf[12] = 2053;
              *&buf[14] = v38;
              *&buf[22] = 2053;
              v75 = v39;
              v76 = 2050;
              v77 = v40;
              v78 = 2053;
              v79 = v41;
              v80 = 2053;
              v81 = v42;
              v82 = 2050;
              v83 = v43;
              _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,added new FWY candidate,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", buf, 0x48u);
            }

            v44 = sub_19B87DD40();
            if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
              }

              v45 = **a5;
              v46 = v45[16];
              v47 = v45[17];
              v48 = v45[18];
              v49 = *(*i + 24);
              v50 = *(*i + 32);
              v51 = *(*i + 40);
              *v61 = 134350593;
              *&v61[4] = a6;
              v62 = 2053;
              v63 = v46;
              v64 = 2053;
              v65 = v47;
              v66 = 2050;
              v67 = v48;
              v68 = 2053;
              v69 = v49;
              v70 = 2053;
              v71 = v50;
              v72 = 2050;
              v73 = v51;
              v52 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::addExtraFreewayCandidateInWiderRadius(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v52);
              if (v52 != buf)
              {
                free(v52);
              }
            }
          }

LABEL_84:
          ;
        }
      }

      *buf = &v59;
      sub_19B8F0E84(buf);
      goto LABEL_105;
    }
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    v22 = *(a1 + 24);
    v21 = *(a1 + 32);
    while (v22 != v21)
    {
      v23 = *v22;
      v24 = v22[1];
      if (*v22 != v24 && *(*v23 + 16) > a6)
      {
        if (v22 != buf)
        {
          sub_19B9A3250(buf, v23, v24, (v24 - v23) >> 4);
          for (k = *buf; k != *&buf[8]; k += 2)
          {
            v54 = **k;
            if (v54 && !*(v54 + 20))
            {
              *v61 = buf;
              sub_19B8F0E84(v61);
              if (!v14)
              {
                goto LABEL_93;
              }

              v8 = *a2;
              goto LABEL_49;
            }
          }
        }

        break;
      }

      v22 += 3;
    }

    *v61 = buf;
    sub_19B8F0E84(v61);
  }

LABEL_93:
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
  }

  v55 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&buf[4] = a6;
    _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,crntSnapVectorShouldHaveSnapOnFWY,NO", buf, 0xCu);
  }

  v56 = sub_19B87DD40();
  if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    goto LABEL_103;
  }

LABEL_105:
  v58 = *MEMORY[0x1E69E9840];
}

void sub_19B9A2670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_19B8F0E84(va);
  _Unwind_Resume(a1);
}

void sub_19B9A26B0(std::mutex *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock(a1);
  sub_19B95E004(a1, a2, a3);

  std::mutex::unlock(a1);
}

void sub_19B9A271C(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v5 == v4)
  {
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    while (1)
    {
      v6 = *v5;
      if (v5[1] - *v5 == 16)
      {
        v7 = *v6;
        if (*v6)
        {
          v8 = *(v7 + 16);
          if (v8 > a3 + 1.0)
          {
            goto LABEL_7;
          }

          if (vabdd_f64(v8, a3) < 0.0001)
          {
            break;
          }
        }
      }

      v5 += 3;
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
    LOBYTE(__p) = 0;
    sub_19B948FAC(v7, &__p);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    v9 = (*v5)[1];
    *a2 = **v5;
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_19B9A27E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9A27FC(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v4;
      if (*(v4 + 8) - *v4 == 16 && (v10 = *v9) != 0)
      {
        if (*(v10 + 16) >= a3)
        {
          *a2 = v7;
          a2[1] = v8;
          return;
        }

        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          sub_19B8750F8(v8);
        }

        v8 = v11;
      }

      else
      {
        v10 = v7;
      }

      v4 += 24;
      v7 = v10;
    }

    while (v4 != v5);
    *a2 = 0;
    a2[1] = 0;
    if (v8)
    {

      sub_19B8750F8(v8);
    }
  }
}

uint64_t sub_19B9A28E4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 120) removeAllObjects];
  v4 = *(a1 + 24);
  v5 = *(a1 + 32) - v4;
  if (v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (v4 + 8);
    v8 = -1.0;
    do
    {
      v9 = *(v7 - 1);
      if (*v7 != v9 && (*v7 - v9) <= 0x10)
      {
        v8 = *(*v9 + 16);
      }

      v7 += 3;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = -1.0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(a2);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        [objc_msgSend(v15 "timestamp")];
        if (v16 > v8)
        {
          [*(a1 + 120) addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      result = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v12 = result;
    }

    while (result);
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B9A2A58()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

double *sub_19B9A2A88(void *a1, char *__src, double *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_19B8F3F74();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_19B8D9954(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_19B9A2C5C(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_19B9A2C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19B9A2C5C(void *a1, double *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_19B8D9954(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 8;
  return result;
}

uint64_t sub_19B9A2D5C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F0CFC(result, a4);
  }

  return result;
}

void sub_19B9A2DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19B8F0E84(&a9);
  _Unwind_Resume(a1);
}

void *sub_19B9A2DE4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_19B9A2E6C(v7);
  return v4;
}

uint64_t sub_19B9A2E6C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B8F0E40(a1);
  }

  return a1;
}

uint64_t sub_19B9A2EA4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_19B9A3028(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_19B9A2EF8(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19B8B8A40();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_19B9A3170(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_19B9A3028(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_19B9A31C8(&v14);
  return v8;
}

void sub_19B9A3014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B9A31C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9A3028(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F0CFC(result, a4);
  }

  return result;
}

void sub_19B9A3090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19B8F0E84(&a9);
  _Unwind_Resume(a1);
}

void *sub_19B9A30B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_19B9A3138(v7);
  return v4;
}

uint64_t sub_19B9A3138(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B8F0E40(a1);
  }

  return a1;
}

void sub_19B9A3170(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void **sub_19B9A31C8(void **a1)
{
  sub_19B9A31FC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B9A31FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_19B8F0E84(&v5);
  }
}

void sub_19B9A3250(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_19B8F0FC8(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B8F0CFC(a1, v10);
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F1C0C(&v18, a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_19B8750F8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = sub_19B8F1C0C(&v17, a2, (a2 + v11), v7);
    a1[1] = sub_19B9A30B0(a1, v12, a3, a1[1]);
  }
}

uint64_t sub_19B9A338C(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ([v8 isWiFiLocationType])
        {
          [a2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B9A348C(double *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1 <= 0.0)
  {
    goto LABEL_22;
  }

  v3 = 0.0;
  if (a1[1] >= 0.0)
  {
    v4 = mach_continuous_time();
    v3 = vabdd_f64(sub_19B994BF4(v4), a1[1]) * 1000.0;
  }

  if (v3 <= v1)
  {
LABEL_22:
    result = 0;
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      v6 = 0.0;
      if (a1[1] >= 0.0)
      {
        v7 = mach_continuous_time();
        v6 = vabdd_f64(sub_19B994BF4(v7), a1[1]) * 1000.0;
      }

      v8 = *a1;
      *buf = 134349312;
      v17 = v6;
      v18 = 2050;
      v19 = v8;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "CLMM,CLTSP,processing time,%{public}.1lf,exceeded maxAllowed,%{public}.1lf", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
      }

      if (a1[1] >= 0.0)
      {
        v10 = mach_continuous_time();
        v11 = vabdd_f64(sub_19B994BF4(v10), a1[1]) * 1000.0;
      }

      v15 = *a1;
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker::processingTimeExceededMaxAllowed() const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    result = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B9A3720()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void **sub_19B9A3750(void **result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        sub_19B9A3988(result, a2, result[1], &a2[3 * a5]);
        v17 = (v6 + 8 * v18);
      }

      else
      {
        result = sub_19B9A3A08(result, (v16 + a3), a4, result[1]);
        v8[1] = result;
        if (v16 < 1)
        {
          return result;
        }

        sub_19B9A3988(v8, a2, v10, &a2[3 * a5]);
        v17 = (v16 + v6);
      }

      return sub_19B9A3BB4(&v29, v6, v17, a2);
    }

    v11 = *result;
    v12 = a5 - 0x5555555555555555 * ((v10 - *result) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v33 = result;
    if (v15)
    {
      sub_19B9A3170(result, v15);
    }

    v19 = (8 * (v13 >> 3));
    v29 = 0;
    v30 = v19;
    v31 = v19;
    v32 = 0;
    v20 = &v19[3 * a5];
    v21 = 24 * a5;
    do
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 0;
      sub_19B9A3028(v19, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
      v19 += 3;
      v6 += 24;
      v21 -= 24;
    }

    while (v21);
    v22 = v30;
    memcpy(v20, a2, v8[1] - a2);
    v23 = *v8;
    v24 = &v20[v8[1] - a2];
    v8[1] = a2;
    v25 = a2 - v23;
    v26 = v22 - (a2 - v23);
    memcpy(v26, v23, v25);
    v27 = *v8;
    *v8 = v26;
    v8[1] = v24;
    v28 = v8[2];
    v8[2] = v32;
    v31 = v27;
    v32 = v28;
    v29 = v27;
    v30 = v27;
    return sub_19B9A31C8(&v29);
  }

  return result;
}

void *sub_19B9A3988(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = v9[2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9 += 3;
      v8 += 3;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_19B9A3B40(&v11, a2, v7, v6);
}

void *sub_19B9A3A08(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_19B9A3028(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_19B9A3ABC(v8);
  return v4;
}

uint64_t sub_19B9A3ABC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B9A3AF4(a1);
  }

  return a1;
}

void sub_19B9A3AF4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_19B8F0E84(&v3);
  }
}

void *sub_19B9A3B40(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 24);
    v7 = a3;
    do
    {
      sub_19B8F0FC8(v6);
      v8 = *(v7 - 3);
      v7 -= 3;
      *v6 = v8;
      v6[2] = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v6 -= 3;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t **sub_19B9A3BB4(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_19B9A3250(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_19B9A3C24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_19B9A3C74(a2);
  }

  sub_19B8B8A40();
}

void sub_19B9A3C74(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B9A3CCC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6 * 8);
      v8 = &a1[v6];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      sub_19B9A4150(a3 + v6 * 8, a1[v6], a1[v6 + 1], (a1[v6 + 1] - a1[v6]) >> 4);
      v7[3] = 0;
      v7[4] = 0;
      v9 = a3 + v6 * 8 + 24;
      *(v9 + 16) = 0;
      sub_19B9A3028(v9, v8[3], v8[4], (v8[4] - v8[3]) >> 4);
      v10 = a3 + v6 * 8;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      v11 = a3 + v6 * 8 + 48;
      *(v11 + 16) = 0;
      sub_19B9A3028(v11, v8[6], v8[7], (v8[7] - v8[6]) >> 4);
      *(a3 + v6 * 8 + 72) = a1[v6 + 9];
      v6 += 10;
    }

    while (v8 + 10 != a2);
    a3 += v6 * 8;
  }

  return a3;
}

void sub_19B9A3D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    v13 = (v10 + v11 - 80);
    v14 = -v11;
    do
    {
      sub_19B9A3DF8(v13);
      v13 -= 10;
      v14 += 80;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9A3DF8(void **a1)
{
  v2 = a1 + 6;
  sub_19B8F0E84(&v2);
  v2 = a1 + 3;
  sub_19B8F0E84(&v2);
  v2 = a1;
  sub_19B8F0E84(&v2);
}

void sub_19B9A3E4C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 10;
        sub_19B9A3DF8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_19B9A3ED0(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v9 -= 10;
          sub_19B9A3DF8(v9);
        }

        while (v9 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x333333333333333)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v12 = 2 * v11;
      if (2 * v11 <= a4)
      {
        v12 = a4;
      }

      if (v11 >= 0x199999999999999)
      {
        v13 = 0x333333333333333;
      }

      else
      {
        v13 = v12;
      }

      sub_19B9A3C24(a1, v13);
    }

    sub_19B8B8A40();
  }

  v14 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v14 >> 4) >= a4)
  {
    sub_19B9A4058(a2, a3, v8);
    v17 = v16;
    v18 = a1[1];
    if (v18 != v16)
    {
      do
      {
        v18 -= 10;
        sub_19B9A3DF8(v18);
      }

      while (v18 != v17);
    }

    a1[1] = v17;
  }

  else
  {
    v15 = sub_19B9A4058(a2, a2 + v14, v8);
    a1[1] = sub_19B9A3CCC(v15, a3, a1[1]);
  }
}

uint64_t sub_19B9A4058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v4 = a2;
  v5 = (a3 + 48);
  do
  {
    if (v3 != v5 - 6)
    {
      sub_19B9A41E8(v5 - 6, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 4);
      sub_19B9A3250(v5 - 3, *(v3 + 24), *(v3 + 32), (*(v3 + 32) - *(v3 + 24)) >> 4);
      sub_19B9A3250(v5, *(v3 + 48), *(v3 + 56), (*(v3 + 56) - *(v3 + 48)) >> 4);
    }

    v5[3] = *(v3 + 72);
    v3 += 80;
    v5 += 10;
  }

  while (v3 != v4);
  return v4;
}

uint64_t sub_19B9A4100(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_19B9A3DF8((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19B9A4150(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F0CFC(result, a4);
  }

  return result;
}

void sub_19B9A41E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      sub_19B8EBC04(a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B8F0CFC(a1, v10);
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v8;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F3078(a2, a3, v8);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      do
      {
        v18 = *(v17 - 8);
        if (v18)
        {
          sub_19B8750F8(v18);
        }

        v17 -= 16;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = sub_19B8F3078(a2, (a2 + v11), v8);
    for (i = a1[1]; v12 != a3; i += 2)
    {
      v14 = v12[1];
      *i = *v12;
      i[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v12 += 2;
    }

    a1[1] = i;
  }
}

void sub_19B9A4348(void *a1)
{
  if (a1)
  {
    sub_19B9A4348(*a1);
    sub_19B9A4348(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      sub_19B8750F8(v2);
    }

    operator delete(a1);
  }
}

void sub_19B9A43C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E0D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9A4414(uint64_t a1)
{
  v4 = (a1 + 72);
  sub_19B8F0E84(&v4);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_19B8750F8(v3);
  }
}

BOOL sub_19B9A4468(uint64_t *a1)
{
  if (a1[6] != a1[7] && (v1 = *a1, (v2 = a1[2]) != 0) && (v3 = a1[4]) != 0 && *v2)
  {
    return *v3 != 0;
  }

  else
  {
    return 0;
  }
}

double sub_19B9A44B0(uint64_t *a1, int a2, int a3)
{
  v6 = 0.0;
  if (sub_19B9A4468(a1))
  {
    v7 = a1[6];
    v8 = a1[7] - v7;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = v8 >> 4;
      do
      {
        if (!v10 && a2 && (v12 = a1[2], **v12 == **v7) && *(*v12 + 8) == *(*v7 + 8))
        {
          sub_19B9A45C8(v12);
        }

        else
        {
          if (!a3 || v10 != v11 - 1)
          {
            v15 = *(v7 + v9);
LABEL_15:
            sub_19B9F5AA8(v15);
            v13 = *(v15 + 40);
            goto LABEL_16;
          }

          v14 = a1[4];
          v15 = *(v7 + v9);
          if (**v14 != *v15 || *(*v14 + 8) != *(v15 + 8))
          {
            goto LABEL_15;
          }

          sub_19B9A4630(v14);
        }

LABEL_16:
        v6 = v6 + v13;
        ++v10;
        v7 = a1[6];
        v11 = (a1[7] - v7) >> 4;
        v9 += 16;
      }

      while (v11 > v10);
    }
  }

  return v6;
}

uint64_t sub_19B9A45C8(uint64_t result)
{
  v1 = *result;
  if (*(result + 65) == 1)
  {
    if (!v1)
    {
      return result;
    }

    v2 = 1.0 - *(result + 48);
  }

  else
  {
    if (!v1)
    {
      return result;
    }

    v2 = *(result + 48);
  }

  result = sub_19B9F5AA8(*result);
  v3 = v2 * *(v1 + 40);
  return result;
}

uint64_t sub_19B9A4630(uint64_t result)
{
  v1 = *result;
  if (*(result + 65) == 1)
  {
    if (!v1)
    {
      return result;
    }

    v2 = *(result + 48);
  }

  else
  {
    if (!v1)
    {
      return result;
    }

    v2 = 1.0 - *(result + 48);
  }

  result = sub_19B9F5AA8(*result);
  v3 = v2 * *(v1 + 40);
  return result;
}

void sub_19B9A4698(uint64_t a1, double a2)
{
  *(a1 + 72) = 0;
  if (*a1 != *(a1 + 8))
  {
    *(a1 + 72) = sub_19B9A4798(a1, 1);
    v4 = *a1;
    v5 = *(a1 + 8);
    if (v5 != *a1)
    {
      v6 = (v5 - *a1) >> 4;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      if (*(*(**&v4 + 16) + 16) <= a2)
      {
        v7 = v6 - 1;
        v8 = v6 - 1;
        v9 = -1;
        v10 = 16;
        while (v8)
        {
          v11 = *(*(*(*&v4 + v10) + 16) + 16);
          ++v9;
          v10 += 16;
          --v8;
          if (v11 > a2)
          {
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_14;
            }

            goto LABEL_12;
          }
        }

        v9 = v7;
        if ((v7 & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

LABEL_12:
        sub_19B9A482C(a1, *a1, (*&v4 + 16 * v9));
        v4 = *a1;
        v5 = *(a1 + 8);
      }
    }

LABEL_14:
    while (*&v4 != v5)
    {
      v12 = **&v4;
      *&v4 += 16;
      *(a1 + 72) = *(a1 + 72) - sub_19B9A44B0(v12, 1, 1);
    }
  }
}

double sub_19B9A4798(double *a1, int a2)
{
  v2 = a1[9];
  v4 = *a1;
  v3 = *(a1 + 1);
  if (v3 != *a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v3 - *a1) >> 4;
    do
    {
      v10 = *(*&v4 + v7);
      if (v10)
      {
        if (v8 == v9 - 1)
        {
          v11 = a2;
        }

        else
        {
          v11 = 0;
        }

        if (v8)
        {
          v12 = 0;
        }

        else
        {
          v12 = a2;
        }

        v2 = v2 + sub_19B9A44B0(v10, v12, v11);
        v4 = *a1;
        v3 = *(a1 + 1);
      }

      ++v8;
      v9 = (v3 - *&v4) >> 4;
      v7 += 16;
    }

    while (v9 > v8);
  }

  return v2;
}

uint64_t sub_19B9A482C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_19B8F1CF8(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_19B8750F8(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

BOOL sub_19B9A48B0(void **a1, __int128 *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (v2[2] && v2[4])
    {
      v5 = *(a2 + 1);
      v7[0] = *a2;
      v7[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_19B9A4964(a1, v7);
      if (v5)
      {
        sub_19B8750F8(v5);
      }
    }

    if (sub_19B9A4468(*a2))
    {
      sub_19B8EAB68(a1, a2);
    }
  }

  return v2 != 0;
}

void sub_19B9A494C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_19B9A4964(void **result, uint64_t a2)
{
  if (*a2)
  {
    v3 = result;
    sub_19B8EAB68(result + 3, (*a2 + 16));
    v4 = (*a2 + 32);

    return sub_19B8EAB68(v3 + 6, v4);
  }

  return result;
}

unint64_t sub_19B9A49BC(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a1;
    do
    {
      if (*v5)
      {
        v4 += (*(*v5 + 56) - *(*v5 + 48)) >> 4;
      }

      v5 += 16;
    }

    while (v5 != v3);
  }

  if (v4 < a2)
  {
    return 0;
  }

  result = (v3 - v2) >> 4;
  v7 = (result & (result >> 31)) - 1;
  for (i = result - 1; ; --i)
  {
    v9 = __OFSUB__(result, 1);
    result = (result - 1);
    if (((result & 0x80000000) != 0) != v9)
    {
      break;
    }

    v10 = *(v2 + 16 * i);
    if (v10)
    {
      a2 -= (*(v10 + 56) - *(v10 + 48)) >> 4;
    }

    if (a2 <= 0)
    {
      return result;
    }
  }

  return v7;
}

uint64_t sub_19B9A4A60(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = (a1[1] - *a1) >> 4;
  if (v3 <= a2 + 1)
  {
    return 0;
  }

  result = 0;
  v5 = ~a2 + v3;
  v6 = v2 + 16 * a2 + 16;
  do
  {
    if (*v6)
    {
      result = result + ((*(*v6 + 56) - *(*v6 + 48)) >> 4);
    }

    v6 += 16;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_19B9A4AC0(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t ***a4, __n128 (****a5)(__n128 *a1, __n128 *a2), uint64_t a6, double a7, double a8)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v20 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLAStarRouteConstructor,construct,invalid processingTimeTracker", buf, 2u);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

  if (!*a6)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v24 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid geometry pointer,constructPedestrian", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

  if (!*a4 || !*a5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid snap pointers,constructPedestrian", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
LABEL_34:
      *v67 = 0;
      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }

LABEL_36:
      v27 = 0;
      goto LABEL_37;
    }

LABEL_82:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    goto LABEL_34;
  }

  sub_19B8EBC04(a1);
  if (*(a1 + 48) == 1)
  {
    *v67 = 0;
    *&v67[8] = v67;
    *&v67[16] = 0x2020000000;
    LOBYTE(v68) = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v72 = sub_19B9A8F9C;
    *&v73 = nullsub_24;
    *(&v73 + 1) = "";
    v74 = **a3;
    v16 = +[CLMapsXPCServiceManager sharedInstance];
    v17 = (**a4)[17];
    if ((**a4)[18] == v17)
    {
      v18 = 0.0;
      v19 = 0.0;
    }

    else
    {
      v18 = *v17;
      v19 = v17[1];
    }

    v43 = CLLocationCoordinate2DMake(v18, v19);
    v44 = *a4;
    v45 = **a4;
    v46 = (**a5)[17];
    if ((**a5)[18] == v46)
    {
      v47 = 0.0;
      v48 = 0.0;
    }

    else
    {
      v47 = *v46;
      v48 = v46[1];
    }

    v50 = *v45;
    v49 = v45[1];
    v51 = *(v44 + 6);
    v52 = CLLocationCoordinate2DMake(v47, v48);
    v53 = **a5;
    v54 = *v53;
    v55 = v53[1];
    v56 = *(*a5 + 6);
    v57 = *(*a6 + 192);
    v58 = *(*a6 + 193);
    v59 = *(a1 + 49);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = sub_19B9A8FAC;
    v66[3] = &unk_1E753E2C0;
    v66[4] = buf;
    v66[5] = v67;
    v66[6] = a1;
    v66[7] = a2;
    LOBYTE(v61) = v59;
    LOWORD(v60) = 0;
    [(CLMapsXPCServiceManager *)v16 constructRouteFromLocation:v50 roadID:v49 clRoadID:v54 projection:v55 toLocation:v57 toRoadID:v58 toCLRoadID:v43.latitude toProjection:v43.longitude maxRouteLength:v51 allowNetwork:v52.latitude preferCachedTiles:v52.longitude isPedestrianOrCycling:v56 clearTiles:a8 iOSTime:a7 familiarityData:v60 useMapsAPIForIntersectionQuery:0 withReply:v61, v66];
    v27 = *(*&v67[8] + 24) ^ 1;
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v67, 8);
  }

  else
  {
    v30 = (*a4)[1];
    v64 = **a4;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v63 = v30;
    v31 = (*a5)[1];
    v65 = **a5;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v62 = v31;
    v32 = mach_continuous_time();
    sub_19B994BF4(v32);
    if (v64 && v65)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      v33 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        v34 = *v64;
        v35 = *v65;
        *buf = 134349824;
        *&buf[4] = a7;
        *&buf[12] = 2050;
        *&buf[14] = v34;
        *&buf[22] = 2050;
        v72 = v35;
        LOWORD(v73) = 2050;
        *(&v73 + 2) = a8;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_INFO, "CLTSP,%{public}.3lf,aStarConstruct,constructing between,start,%{public}lld,stop,%{public}lld,maxLength,%{public}.2lf", buf, 0x2Au);
      }

      v36 = sub_19B87DD40();
      if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v37 = *v64;
        v38 = *v65;
        *v67 = 134349824;
        *&v67[4] = a7;
        *&v67[12] = 2050;
        *&v67[14] = v37;
        *&v67[22] = 2050;
        v68 = v38;
        v69 = 2050;
        v70 = a8;
        v39 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)", "CoreLocation: %s\n", v39);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      operator new();
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v40 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      *&buf[4] = a7;
      *&buf[12] = 1026;
      *&buf[14] = v64 != 0;
      *&buf[18] = 1026;
      *&buf[20] = v65 != 0;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.3lf,aStarConstruct,invalid inputs,startRoad,%{public}d,destRoad,%{public}d", buf, 0x18u);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      *v67 = 134349568;
      *&v67[4] = a7;
      *&v67[12] = 1026;
      *&v67[14] = v64 != 0;
      *&v67[18] = 1026;
      *&v67[20] = v65 != 0;
      v42 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    v27 = 0;
    if (v62)
    {
      sub_19B8750F8(v62);
    }

    if (v63)
    {
      sub_19B8750F8(v63);
    }
  }

LABEL_37:
  v28 = *MEMORY[0x1E69E9840];
  return v27 & 1;
}

void sub_19B9A8D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, char a55, void *a56, uint64_t a57, char a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a54)
  {
    sub_19B8750F8(a54);
  }

  sub_19B8F3484(&a55, a56);
  sub_19B9B0C1C(&a58, a59);
  if (a66)
  {
    sub_19B8750F8(a66);
  }

  if (a70)
  {
    sub_19B8750F8(a70);
  }

  if (a44)
  {
    sub_19B8750F8(a44);
  }

  if (a45)
  {
    sub_19B8750F8(a45);
  }

  _Unwind_Resume(a1);
}

__n128 sub_19B9A8F9C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_19B9A8FAC(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v20 = a1[6];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
  }

  v4 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v5 = [a2 count];
    }

    else
    {
      v5 = -1;
    }

    v6 = *(a1[4] + 8);
    v7 = 0.0;
    if (*(v6 + 56) >= 0.0)
    {
      v8 = mach_continuous_time();
      v7 = vabdd_f64(sub_19B994BF4(v8), *(v6 + 56)) * 1000.0;
    }

    *buf = 67240704;
    *&buf[4] = v5;
    v33 = 1026;
    v34 = a2 == 0;
    v35 = 2050;
    v36 = v7;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned constructRouteFromLocation call,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf", buf, 0x18u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    if (a2)
    {
      v10 = [a2 count];
    }

    else
    {
      v10 = -1;
    }

    v11 = *(a1[4] + 8);
    v12 = 0.0;
    if (*(v11 + 56) >= 0.0)
    {
      v13 = mach_continuous_time();
      v12 = vabdd_f64(sub_19B994BF4(v13), *(v11 + 56)) * 1000.0;
    }

    v26 = 67240704;
    v27 = v10;
    v28 = 1026;
    v29 = a2 == 0;
    v30 = 2050;
    v31 = v12;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)_block_invoke", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *(*(a1[5] + 8) + 24) = a2 == 0;
  if (a2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = [a2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(a2);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_19B8F30F0();
          }
        }

        v15 = [a2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_19B9A9428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (v45)
  {
    sub_19B8750F8(v45);
  }

  sub_19B8750F8(v44);
  if (a44)
  {
    sub_19B8750F8(a44);
  }

  _Unwind_Resume(a1);
}

double sub_19B9A94E8(uint64_t a1, unint64_t ***a2)
{
  v2 = *a2;
  v3 = -1.0;
  if (*a2 && *v2 && sub_19B8F07E0(a1, *v2))
  {
    return *(sub_19B9B0B80(a1, **a2) + 48);
  }

  return v3;
}

uint64_t sub_19B9A9568(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*v2)
    {
      v3 = *(v2 + 48) + *(v2 + 56);
      result = sub_19B9B0B80(result, *v2);
      *(result + 48) = v3;
    }
  }

  return result;
}

uint64_t sub_19B9A95C8(uint64_t a1, double a2, double a3, double a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*a6)
  {
    if (*a9)
    {
      sub_19B8EBC04(a1);
      v15 = mach_continuous_time();
      sub_19B994BF4(v15);
      ++*(a1 + 52);
      if (*a7 && a3 <= 1.0 && a3 >= 0.0 && a4 <= 1.0 && a4 >= 0.0 && *a8)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v16 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(*a7 + 8);
          v18 = *(*a8 + 8);
          buf = 134349568;
          *buf_4 = a2;
          v39 = 2050;
          *v40 = v17;
          *&v40[8] = 2050;
          *v41 = v18;
          _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.3lf,constructing between,start,%{public}lld,stop,%{public}lld", &buf, 0x20u);
        }

        v19 = sub_19B87DD40();
        if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
          }

          v33 = *(*a7 + 8);
          v36 = *(*a8 + 8);
          v20 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLAStarRouteConstructor::constructPedestrian(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLMapRoadPtr &, const CLMapRoadPtr &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const GEOLocationCoordinate2D &, const double, double, const std::optional<double>)", "CoreLocation: %s\n", v20);
          if (v20 != &buf)
          {
            free(v20);
          }
        }

        operator new();
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      v23 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v24 = *a7 != 0;
        v25 = *a8 != 0;
        buf = 134350080;
        *buf_4 = a2;
        v39 = 1026;
        *v40 = v24;
        *&v40[4] = 1026;
        *&v40[6] = v25;
        *v41 = 2048;
        *&v41[2] = a3;
        v42 = 2048;
        v43 = a4;
        _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.3lf,routeConstructor,constructPedestrian,invalid inputs,startRoad,%{public}d,destRoad,%{public}d,startRoadProjection,%.1lf,destinationRoadProjection,%.1lf", &buf, 0x2Cu);
      }

      v26 = sub_19B87DD40();
      if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v34 = *a7 != 0;
        v35 = *a8 != 0;
        v27 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::constructPedestrian(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLMapRoadPtr &, const CLMapRoadPtr &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const GEOLocationCoordinate2D &, const double, double, const std::optional<double>)", "CoreLocation: %s\n", v27);
        if (v27 != &buf)
        {
          free(v27);
        }
      }

      ++*(a1 + 56);
      goto LABEL_53;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v28 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid geometry pointer,constructPedestrian", &buf, 2u);
    }

    v29 = sub_19B87DD40();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_60;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLAStarRouteConstructor,constructPedestrian,invalid processingTimeTracker", &buf, 2u);
    }

    v22 = sub_19B87DD40();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_51:
        v30 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::constructPedestrian(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLMapRoadPtr &, const CLMapRoadPtr &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const GEOLocationCoordinate2D &, const double, double, const std::optional<double>)", "CoreLocation: %s\n", v30);
        if (v30 != &buf)
        {
          free(v30);
        }

        goto LABEL_53;
      }

LABEL_60:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      goto LABEL_51;
    }
  }

LABEL_53:
  v31 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19B9AC840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, char a39, void *a40, uint64_t a41, char a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  if (a38)
  {
    sub_19B8750F8(a38);
  }

  v53 = a48;
  sub_19B9B0C1C(&a39, a40);
  sub_19B9B0C1C(&a42, a43);
  if (v53)
  {
    sub_19B8750F8(v53);
  }

  if (a52)
  {
    sub_19B8750F8(a52);
  }

  _Unwind_Resume(a1);
}

void sub_19B9AC9F0(uint64_t *a1, float64x2_t *a2)
{
  v2 = *a1;
  if ((a1[1] - *a1) >= 0x11)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v8 = *(v2 + v5);
      v7 = *(v2 + v5 + 8);
      v20[0] = v8;
      v20[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v2 = *a1;
      }

      v18 = *(v2 + 16 * v6);
      v19 = *(v2 + 16 * v6);
      v9 = *(&v19 + 1);
      if (*(&v19 + 1))
      {
        atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if ((sub_19B96D650(v8, &v19) & 1) == 0)
      {
        if (sub_19B96D714(v8, &v19))
        {
          v10 = 1;
          goto LABEL_11;
        }

        v11 = *v8;
        v12 = *v18;
        v13 = sub_19BA0C01C(a2, **(*v8 + 136), *(*(*v8 + 136) + 8), **(*v18 + 136), *(*(*v18 + 136) + 8), 0.0);
        v14 = sub_19BA0C01C(a2, **(v11 + 136), *(*(v11 + 136) + 8), *(*(v12 + 144) - 16), *(*(v12 + 144) - 8), 0.0);
        if (v14 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        v16 = sub_19BA0C01C(a2, *(*(v11 + 144) - 16), *(*(v11 + 144) - 8), **(v12 + 136), *(*(v12 + 136) + 8), 0.0);
        v17 = sub_19BA0C01C(a2, *(*(v11 + 144) - 16), *(*(v11 + 144) - 8), *(*(v12 + 144) - 16), *(*(v12 + 144) - 8), 0.0);
        if (v17 >= v16)
        {
          v17 = v16;
        }

        if (v15 >= v17)
        {
          goto LABEL_12;
        }
      }

      v10 = 0;
LABEL_11:
      *(v8 + 24) = v10;
LABEL_12:
      if (v6 == ((a1[1] - *a1) >> 4) - 1 && sub_19B96D714(v18, v20))
      {
        *(v18 + 24) = 0;
      }

      if (v9)
      {
        sub_19B8750F8(v9);
      }

      if (v7)
      {
        sub_19B8750F8(v7);
      }

      ++v6;
      v2 = *a1;
      v5 += 16;
    }

    while (v6 < (a1[1] - *a1) >> 4);
  }
}

void sub_19B9ACBD0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_19B9ACBF4(__int128 ***a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v17 = 0uLL;
    v18 = 0;
    v2 = *a1;
    v3 = a1[1];
    if (*a1 == v3)
    {
      goto LABEL_8;
    }

    do
    {
      sub_19B8EAB68(&v17, *v2);
      v2 += 2;
    }

    while (v2 != v3);
    v5 = *(&v17 + 1);
    v6 = v17;
    if (v17 == *(&v17 + 1))
    {
LABEL_8:
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E138);
      }

      v9 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,getPercentageOfFamiliarRoadsInRoute,Empty AStar route", buf, 2u);
      }

      v10 = sub_19B87DD40();
      if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || (v8 = -1.0, *(v10 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E138);
        }

        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "double CLAStarRouteConstructor::getPercentageOfFamiliarRoadsInRoute(std::shared_ptr<CLFamiliarRoadData>)", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }

        v8 = -1.0;
      }
    }

    else
    {
      v7 = 0;
      do
      {
        v7 += sub_19B96D1B4(*a2, *v6);
        v6 += 2;
      }

      while (v6 != v5);
      v8 = v7 * 100.0 / ((*(&v17 + 1) - v17) >> 4);
    }

    *buf = &v17;
    sub_19B8F0E84(buf);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E138);
    }

    v12 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLTSP,getPercentageOfFamiliarRoadsInRoute,familiarRoadData is null", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || (v8 = -1.0, *(v13 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E138);
      }

      LOWORD(v17) = 0;
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "double CLAStarRouteConstructor::getPercentageOfFamiliarRoadsInRoute(std::shared_ptr<CLFamiliarRoadData>)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }

      v8 = -1.0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_19B9ACFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a13;
  sub_19B8F0E84(&a17);
  _Unwind_Resume(a1);
}

void sub_19B9ACFD0(uint64_t *a1, void *a2, double **a3, uint64_t ****a4, __n128 (*****a5)(__n128 *a1, __n128 *a2), __int128 **a6)
{
  v145 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v7 = *a4;
    v8 = a4[1];
    if (*a4 == v8)
    {
      goto LABEL_221;
    }

    v10 = *a5;
    v11 = a5[1];
    if (*a5 == v11)
    {
      goto LABEL_221;
    }

    v13 = a3;
    v124 = 0;
    v125 = 0;
    v123 = xmmword_19BA89490;
    v126 = 0x3FF0000000000000;
    v15 = mach_continuous_time();
    sub_19B994BF4(v15);
    v111 = *a4;
    v104 = a4[1];
    if (*a4 == v104)
    {
LABEL_165:
      if (a5[1] - *a5 != 16)
      {
        buf = 0uLL;
        v138 = 0.0;
        v84 = *a6;
        v85 = a6[1];
        if (*a6 != v85)
        {
          do
          {
            if (*(*v84 + 48) == *(*v84 + 56))
            {
              sub_19B8EAB68(&buf, v84);
            }

            else if (sub_19B9A44B0(*v84, 1, 1) >= 0.00001)
            {
              v86 = *a6;
              v87 = a6[1];
              if (*a6 != v87)
              {
                v88 = **(*v84 + 48);
                v89 = *(*(*v84 + 56) - 16);
                do
                {
                  if (*v84 != *v86 && sub_19B9A44B0(*v86, 1, 1) != 0.0)
                  {
                    v90 = *v86;
                    v91 = *(*v86 + 48);
                    if (*v88 == **v91 && v88[1] == *(*v91 + 8))
                    {
                      v92 = *(v90 + 56);
                      if (v91 != v92)
                      {
                        while (*v89 != **v91 || v89[1] != *(*v91 + 8))
                        {
                          v91 += 16;
                          if (v91 == v92)
                          {
                            goto LABEL_182;
                          }
                        }

                        if (*v90 > **v84)
                        {
                          sub_19B8EAB68(&buf, v86);
                        }
                      }
                    }
                  }

LABEL_182:
                  ++v86;
                }

                while (v86 != v87);
              }
            }

            ++v84;
          }

          while (v84 != v85);
          if (buf != *(&buf + 1))
          {
            v93 = *a6;
            v94 = a6[1];
            while (v93 != v94)
            {
              v95 = buf;
              if (buf == *(&buf + 1))
              {
LABEL_192:
                v93 += 16;
              }

              else
              {
                while (*v93 != *v95)
                {
                  v95 += 2;
                  if (v95 == *(&buf + 1))
                  {
                    goto LABEL_192;
                  }
                }

                sub_19B8F1CF8(&v127, (v93 + 16), v94, v93);
                v94 = v96;
                v97 = a6[1];
                if (v97 != v96)
                {
                  do
                  {
                    v98 = *(v97 - 1);
                    if (v98)
                    {
                      sub_19B8750F8(v98);
                    }

                    --v97;
                  }

                  while (v97 != v94);
                  a6[1] = v94;
                }
              }
            }
          }
        }

        *&v129 = &buf;
        sub_19B8F0E84(&v129);
      }

      goto LABEL_221;
    }

    v110 = 0;
    v107 = ((v11 - v10) >> 4) * ((v8 - v7) >> 4);
    v105 = v13;
    v108 = a2;
    while (1)
    {
      v16 = v111;
      if (sub_19B9A348C(*v13))
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v101 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B873000, v101, OS_LOG_TYPE_INFO, "CLTSP,CLAStarRouteConstructor,processingTime exceeded max allowed,constructRouteCandidates,start loop", &buf, 2u);
        }

        v102 = sub_19B87DD40();
        if (*(v102 + 160) > 1 || *(v102 + 164) > 1 || *(v102 + 168) > 1 || *(v102 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
LABEL_224:
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
          }

LABEL_218:
          LOWORD(v129) = 0;
          v83 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v83);
LABEL_219:
          if (v83 != &buf)
          {
            free(v83);
          }
        }

        goto LABEL_221;
      }

      if (!*v111)
      {
        break;
      }

      if (**v111)
      {
        v18 = *a5;
        v17 = a5[1];
        for (i = v17; ; v17 = i)
        {
          if (v18 == v17)
          {
            goto LABEL_149;
          }

          if (sub_19B9A348C(*v13))
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
            }

            v99 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_INFO, "CLTSP,CLAStarRouteConstructor,processingTime exceeded max allowed,constructRouteCandidates,destination loop", &buf, 2u);
            }

            v100 = sub_19B87DD40();
            if (*(v100 + 160) <= 1 && *(v100 + 164) <= 1 && *(v100 + 168) <= 1 && !*(v100 + 152))
            {
              goto LABEL_221;
            }

            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              goto LABEL_224;
            }

            goto LABEL_218;
          }

          sub_19B8EBC04(a1);
          v19 = *v18;
          if (*v18)
          {
            if (*v19)
            {
              if (-1.0 >= 0.0)
              {
                v36 = fmax(-1.0 * 0.25, 200.0);
                if (v36 < 600.0)
                {
                  v36 = 600.0;
                }

                v28 = v36 + -1.0;
              }

              else
              {
                v20 = *v16;
                v21 = *(*v16 + 3);
                v22 = *(v19 + 3);
                v23 = vabdd_f64(*(v19 + 2), *(*v16 + 2));
                v24 = *(*a2 + 152);
                v25 = 66.6;
                if (v24 == 3)
                {
                  v25 = 30.0;
                }

                if (v24 == 2)
                {
                  v26 = 13.3;
                }

                else
                {
                  v26 = v25;
                }

                *&buf = 0;
                *&v129 = 0;
                sub_19BA0C3BC(&v123, &buf, &v129, v21, *(v20 + 4), 0.0, *(v20 + 5), v22, *(v19 + 4));
                v27 = (fabs(*&buf) + fabs(*&v129)) * 3.0;
                if (v27 >= v23 * v26)
                {
                  v28 = v23 * v26;
                }

                else
                {
                  v28 = v27;
                }
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
              }

              v37 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v38 = a1[5];
                v39 = a1[9];
                LODWORD(buf) = 67241472;
                DWORD1(buf) = ++v110;
                WORD4(buf) = 1026;
                *(&buf + 10) = v107;
                HIWORD(buf) = 2050;
                v138 = -1.0;
                v139 = 2050;
                v140 = v28;
                v141 = 2050;
                v142 = v38;
                v143 = 2050;
                v144 = v39;
                _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEBUG, "CLTSP,construcRouteCandidates,processing,%{public}d/%{public}d,minRouteLength,%{public}.1lf,maxRouteLength,%{public}.1lf,processingTimeMSec,%{public}.2lf,cumulativeProcessingTimeMSec,%{public}.2lf", &buf, 0x36u);
              }

              v40 = sub_19B87DD40();
              if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                }

                v41 = a1[5];
                v42 = a1[9];
                LODWORD(v129) = 67241472;
                DWORD1(v129) = ++v110;
                WORD4(v129) = 1026;
                *(&v129 + 10) = v107;
                HIWORD(v129) = 2050;
                v130 = -1.0;
                v131 = 2050;
                v132 = v28;
                v133 = 2050;
                v134 = v41;
                v135 = 2050;
                v136 = v42;
                v43 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v43);
                if (v43 != &buf)
                {
                  free(v43);
                }
              }

              v44 = *a2;
              if (*(*a2 + 152) == 1)
              {
                v45 = *v16;
                v46 = *(*v16 + 2);
                v47 = *v13;
                v48 = v13[1];
                v122[0] = v47;
                v122[1] = v48;
                if (v48)
                {
                  atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
                  v45 = *v16;
                }

                v49 = v16[1];
                v121[0] = v45;
                v121[1] = v49;
                if (v49)
                {
                  atomic_fetch_add_explicit(v49 + 1, 1uLL, memory_order_relaxed);
                }

                v50 = v18[1];
                v120[0] = *v18;
                v120[1] = v50;
                if (v50)
                {
                  atomic_fetch_add_explicit(v50 + 1, 1uLL, memory_order_relaxed);
                }

                v51 = v108[1];
                v119[0] = *v108;
                v119[1] = v51;
                if (v51)
                {
                  atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v118[2] = 0;
                v118[3] = 0;
                v52 = sub_19B9A4AC0(a1, &v123, v122, v121, v120, v119, v46, v28);
                if (v51)
                {
                  sub_19B8750F8(v51);
                }

                if (v50)
                {
                  sub_19B8750F8(v50);
                }

                if (v49)
                {
                  sub_19B8750F8(v49);
                }

                a2 = v108;
                if (v48)
                {
                  sub_19B8750F8(v48);
                }

                v16 = v111;
                if (v52)
                {
                  goto LABEL_97;
                }

                v13 = v105;
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                }

                v53 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
                {
                  v54 = (*v111)[2];
                  LODWORD(buf) = 134349056;
                  *(&buf + 4) = v54;
                  _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_INFO, "CLTSP,%{public}.1lf,constructRouteCandidates,unable to construct route", &buf, 0xCu);
                }

                v55 = sub_19B87DD40();
                if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
                {
                  bzero(&buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                  }

                  v56 = (*v111)[2];
                  LODWORD(v129) = 134349056;
                  *(&v129 + 4) = v56;
                  v31 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v31);
LABEL_120:
                  if (v31 != &buf)
                  {
                    free(v31);
                  }
                }
              }

              else
              {
                v57 = *v18;
                v129 = *(*v18 + 3);
                v58 = *v16;
                v59 = *(*v16 + 2);
                v60 = v16;
                v61 = v13[1];
                v118[0] = *v13;
                v118[1] = v61;
                if (v61)
                {
                  atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                  v58 = *v60;
                  v57 = *v18;
                  v44 = *a2;
                }

                v62 = a2[1];
                v117[0] = v44;
                v117[1] = v62;
                v63 = v57;
                v64 = v58;
                if (v62)
                {
                  atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
                  v64 = *v111;
                  v63 = *v18;
                }

                v106 = v106 & 0xFFFFFFFFFFFFFF00 | 1;
                v65 = sub_19B9A95C8(a1, v59, *(v64 + 48), *(v63 + 6), &v123, v118, v58, v57, v117);
                if (v62)
                {
                  sub_19B8750F8(v62);
                }

                if (v61)
                {
                  sub_19B8750F8(v61);
                }

                a2 = v108;
                if (v65)
                {
                  v16 = v111;
LABEL_97:
                  v66 = v16[1];
                  v115 = *v16;
                  v116 = v66;
                  if (v66)
                  {
                    atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v67 = v18[1];
                  v113 = *v18;
                  v114 = v67;
                  if (v67)
                  {
                    atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_19B9AEA00(a1, &v115, &v113);
                  if (v114)
                  {
                    sub_19B8750F8(v114);
                  }

                  if (v116)
                  {
                    sub_19B8750F8(v116);
                  }

                  v127 = 0uLL;
                  v128 = 0;
                  v68 = *a1;
                  v69 = a1[1];
                  while (v68 != v69)
                  {
                    sub_19B8EAB68(&v127, *v68);
                    v68 += 2;
                  }

                  operator new();
                }

                v16 = v111;
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                }

                v70 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
                {
                  v71 = (*v111)[2];
                  LODWORD(buf) = 134349056;
                  *(&buf + 4) = v71;
                  _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_INFO, "CLTSP,%{public}.1lf,constructPedestrianRouteCandidates,unable to construct route", &buf, 0xCu);
                }

                v72 = sub_19B87DD40();
                if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
                {
                  bzero(&buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                  }

                  v73 = (*v111)[2];
                  LODWORD(v127) = 134349056;
                  *(&v127 + 4) = v73;
                  v31 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v31);
                  goto LABEL_120;
                }
              }
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
              }

              v32 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                v33 = (*v18)[2];
                LODWORD(buf) = 134349056;
                *(&buf + 4) = v33;
                _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,construcRouteCandidates,dest road is null", &buf, 0xCu);
              }

              v34 = sub_19B87DD40();
              if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                }

                v35 = (*v18)[2];
                LODWORD(v129) = 134349056;
                *(&v129 + 4) = v35;
                v31 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v31);
                goto LABEL_120;
              }
            }
          }

          else
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
            }

            v29 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLTSP,construcRouteCandidates,dest snap is null", &buf, 2u);
            }

            v30 = sub_19B87DD40();
            if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
            {
              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
              }

              LOWORD(v129) = 0;
              v31 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v31);
              goto LABEL_120;
            }
          }

          v18 += 2;
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      v77 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v78 = (*v111)[2];
        LODWORD(buf) = 134349056;
        *(&buf + 4) = v78;
        _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,construcRouteCandidates,start road is null", &buf, 0xCu);
      }

      v79 = sub_19B87DD40();
      if ((*(v79 + 160) & 0x80000000) == 0 || (*(v79 + 164) & 0x80000000) == 0 || (*(v79 + 168) & 0x80000000) == 0 || *(v79 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v80 = (*v111)[2];
        LODWORD(v129) = 134349056;
        *(&v129 + 4) = v80;
        v76 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v76);
LABEL_147:
        if (v76 != &buf)
        {
          free(v76);
        }
      }

LABEL_149:
      v111 = v16 + 2;
      if (v16 + 2 == v104)
      {
        goto LABEL_165;
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v74 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_ERROR, "CLTSP,construcRouteCandidates,start snap is null", &buf, 2u);
    }

    v75 = sub_19B87DD40();
    if ((*(v75 + 160) & 0x80000000) != 0 && (*(v75 + 164) & 0x80000000) != 0 && (*(v75 + 168) & 0x80000000) != 0 && !*(v75 + 152))
    {
      goto LABEL_149;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    LOWORD(v129) = 0;
    v76 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v76);
    goto LABEL_147;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
  }

  v81 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_19B873000, v81, OS_LOG_TYPE_ERROR, "CLTSP,CLAStarRouteConstructor,constructRouteCandidates,invalid processingTimeTracker", &buf, 2u);
  }

  v82 = sub_19B87DD40();
  if ((*(v82 + 160) & 0x80000000) == 0 || (*(v82 + 164) & 0x80000000) == 0 || (*(v82 + 168) & 0x80000000) == 0 || *(v82 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    LOWORD(v129) = 0;
    v83 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v83);
    goto LABEL_219;
  }

LABEL_221:
  v103 = *MEMORY[0x1E69E9840];
}

void sub_19B9AE8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a65 = &STACK[0x200];
  sub_19B8F0E84(&a65);
  _Unwind_Resume(a1);
}

double sub_19B9AEA00(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_19B9B0CAC(a1, 0.0);
  if (*a2)
  {
    sub_19B9A4630(*a2);
    v5 = v5 - v6;
  }

  if (*a3)
  {
    sub_19B9A45C8(*a3);
    return v5 - v7;
  }

  return v5;
}

BOOL sub_19B9AEA5C(double ***a1, void **a2, uint64_t *a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = a3[1];
  v25[0] = *a3;
  v25[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B9AECDC(a1, &v26, v25);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  sub_19B9B0AAC(a2, (a1[1] - *a1) >> 4);
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 2)
  {
    v9 = *v8;
    if (*v8)
    {
      for (j = v26; j != v27; ++j)
      {
        v11 = *j;
        if (*j)
        {
          v12 = *(v11 + 16);
          if (vabdd_f64(v12, *v9) < 0.001)
          {
            if (*(v11 + 64) == 1 && v12 > 0.0)
            {
              if (*v11)
              {
                v13 = *(v11 + 32);
                v14 = fabs(*(v11 + 24));
                if ((v14 >= 0.00003 || fabs(v13) >= 0.00003) && v13 >= -180.0 && v14 <= 90.0 && v13 <= 180.0)
                {
                  sub_19B8EAB68(a2, j);
                  goto LABEL_31;
                }
              }
            }

            break;
          }
        }
      }

      v15 = v9[4];
      v16 = v9[5];
      v17 = v9[3];
      if (v15 >= 0.0 && v17 > 0.0)
      {
        v18 = v17 + 10.0;
        if (v16 >= v17)
        {
          v18 = v9[5];
        }

        if (v18 <= 179.0)
        {
          v16 = v18;
        }

        else
        {
          v16 = 179.0;
        }
      }

      v24 = 0uLL;
      if (sub_19B8E8210(*a3, &v24, 1, *v9, v9[1], v9[2], v15, v17, v16))
      {
        v19 = v24;
        if (v24)
        {
          v20 = *v8;
          v21 = -1.0;
          if ((*v8)[7] > 0.0)
          {
            v21 = v20[6];
          }

          *(v24 + 104) = v21;
          *(v19 + 120) = *(v20 + 22);
          sub_19B8EAB68(a2, &v24);
        }
      }

      if (*(&v24 + 1))
      {
        sub_19B8750F8(*(&v24 + 1));
      }
    }

LABEL_31:
    ;
  }

  v22 = *a2 != a2[1];
  *&v24 = &v26;
  sub_19B8F0E84(&v24);
  return v22;
}

void sub_19B9AEC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = &a14;
  sub_19B8F0E84(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9AECDC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    sub_19B8EBC04(a2);
    v14 = 0;
    v4 = *(*a3 + 192);
    v5 = *(*a3 + 152);
    if (v5 == 1)
    {
      operator new();
    }

    if ((v5 & 0xFFFFFFFE) == 2)
    {
      operator new();
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v9 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid mapmatcher pointer,matchOnRoadUsingParticleMapMatcher", __p, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      LOWORD(v15) = 0;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLMapMatcherWrapper::matchOnRoadUsingParticleMapMatcher(const std::vector<CLGeoMapLocationPtr> &, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }

    sub_19B9B1214(&v14, 0);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid geometry pointer,matchOnRoadUsingParticleMapMatcher", __p, 2u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      LOWORD(v15) = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLMapMatcherWrapper::matchOnRoadUsingParticleMapMatcher(const std::vector<CLGeoMapLocationPtr> &, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v8);
      if (v8 != __p)
      {
        free(v8);
      }
    }
  }

  result = 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9B083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, int a41, char a42, __int16 a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (a42 < 0)
  {
    operator delete(a36);
  }

  if (a44 < 0)
  {
    operator delete(a40);
  }

  sub_19B9B1214(&a72, 0);
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  if (a21)
  {
    sub_19B8750F8(a21);
  }

  _Unwind_Resume(a1);
}

void *sub_19B9B0AAC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_19B8F0D38(result, a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

os_log_t sub_19B9B0B50()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B9B0B80(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_19B8F08E8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_19B9B0C1C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B9B0C1C(a1, *a2);
    sub_19B9B0C1C(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_19B8750F8(v4);
    }

    operator delete(a2);
  }
}

os_log_t sub_19B9B0C7C()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

double sub_19B9B0CAC(uint64_t *a1, double a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = (v2 - *a1) >> 4;
  v9 = 0.0;
  do
  {
    v10 = *(v3 + v6);
    if (v10)
    {
      if (a2 != 0.0 && v7 < v8 - 1 && *(v3 + v6 + 16))
      {
        v11 = sub_19B96D7D8(v10, 1);
        v12 = sub_19B96D7D8(*(v3 + v6 + 16), 0);
        v13 = fmod(v11 + -90.0 + 90.0 - v12 + 180.0, 360.0);
        if (v13 < 0.0)
        {
          v13 = v13 + 360.0;
        }

        v14 = v13 + -360.0;
        if (v13 <= 180.0)
        {
          v14 = v13;
        }

        v15 = fabs(v14);
        v16 = 0.0;
        if (v15 > 5.0 && v15 < 180.0)
        {
          v16 = a2 / tan(v14 * 0.0174532925 * 0.5);
        }

        v9 = v9 + v16 * -2.0;
        v10 = *(v3 + v6);
      }

      v17 = *v10;
      sub_19B9F5AA8(*v10);
      v9 = v9 + *(v17 + 40);
      v3 = *a1;
      v2 = a1[1];
    }

    ++v7;
    v8 = (v2 - v3) >> 4;
    v6 += 16;
  }

  while (v7 < v8);
  return v9;
}

uint64_t sub_19B9B0E48(uint64_t a1)
{
  *a1 = &unk_1F0E6E168;
  v2 = *(a1 + 2176);
  if (v2)
  {
    *(a1 + 2184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2088);
  *(a1 + 2088) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 2080);
  *(a1 + 2080) = 0;
  if (v4)
  {
    v16 = (v4 + 232);
    sub_19B8F0E84(&v16);
    v5 = sub_19B9B1004(v4);
    MEMORY[0x19EAE98C0](v5, 0x10B2C406FD4C524);
  }

  v16 = (a1 + 1928);
  sub_19B98868C(&v16);
  v16 = (a1 + 1904);
  sub_19B98868C(&v16);
  v16 = (a1 + 1880);
  sub_19B9886E0(&v16);
  v6 = *(a1 + 1840);
  if (v6)
  {
    *(a1 + 1848) = v6;
    operator delete(v6);
  }

  sub_19B916DC0((a1 + 1808));
  sub_19B916DC0((a1 + 1784));
  if (*(a1 + 1431) < 0)
  {
    operator delete(*(a1 + 1408));
  }

  v7 = *(a1 + 1176);
  if (v7)
  {
    *(a1 + 1184) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 1096);
  if (v8)
  {
    sub_19B8750F8(v8);
  }

  sub_19B9679F8((a1 + 1040));
  v9 = *(a1 + 1000);
  if (v9)
  {
    sub_19B8750F8(v9);
  }

  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  v10 = *(a1 + 472);
  if (v10)
  {
    *(a1 + 480) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 392);
  if (v11)
  {
    sub_19B8750F8(v11);
  }

  v12 = *(a1 + 352);
  if (v12)
  {
    *(a1 + 360) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 272);
  if (v13)
  {
    sub_19B8750F8(v13);
  }

  v16 = (a1 + 240);
  sub_19B988734(&v16);
  v14 = *(a1 + 216);
  if (v14)
  {
    sub_19B8750F8(v14);
  }

  return a1;
}

uint64_t sub_19B9B1004(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLGCZ,destroy geocodec malloc zone,~CLGeoMapGeometry()", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLGeoMapGeometry::~CLGeoMapGeometry()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    MEMORY[0x19EAE9260]();

    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {

    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 104);
  if (v6)
  {

    *(a1 + 104) = 0;
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_19B93466C(a1);
  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B9B1208(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

uint64_t *sub_19B9B1214(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 2248);
    if (v3)
    {
      *(v2 + 2256) = v3;
      operator delete(v3);
    }

    sub_19B9B0E48(v2);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

void sub_19B9B12A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9B1300(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_19B9B1380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B9B1394(va);
  _Unwind_Resume(a1);
}

void **sub_19B9B1394(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_19B96D47C(v2);
    MEMORY[0x19EAE98C0](v3, 0x10A0C4085F86E2DLL);
  }

  return a1;
}

void sub_19B9B13E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void *sub_19B9B1418(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_19B96D47C(result);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

uint64_t sub_19B9B145C(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6E2A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B9B14BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E2C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9B1558(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9B15D4()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "#Spi, Interrupted", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient connection]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_19B9B17CC(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = a2;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi, Error with asynchronous proxy, error: %@", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient asynchronousRemoteObject]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B9B1A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B1B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B1B70(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B1C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B1D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B1E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B1FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_19B9B1FFC(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B9B21D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B21FC(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_19B9B2308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B2320(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 40) = a3;
    return *(*(result[4] + 8) + 40);
  }

  return result;
}

void sub_19B9B2410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B2428(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 40) = a3;
    return *(*(result[4] + 8) + 40);
  }

  return result;
}

void sub_19B9B2518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B2530(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 40) = a3;
      return *(*(result[4] + 8) + 40);
    }
  }

  return result;
}

void sub_19B9B2600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B2618(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

void sub_19B9B2868(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "#Spi, Couldn't set location default!", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setLocationDefaultForKey:value:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B9B2B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B2B30(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2114;
    v13 = a2;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Spi, getLocationDefaultForKey, , error:%{public, location:escape_only}@}", v9, 0x1Cu);
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B9B2DD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      v3 = result;
      result = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:a3];
      *(*(*(v3 + 32) + 8) + 40) = result;
    }
  }

  return result;
}

void sub_19B9B2E68(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "#Spi, setPrivateMode failed", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setPrivateMode:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B9B30B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B30C8(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_19B9B3188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B3220(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetLocationServicesEnabled failed", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setLocationServicesEnabled:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B9B3470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B3488(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3 == 1;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B3594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B35AC(void *result, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetAuthorizationPromptMapDisplayEnabled failed", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setAuthorizationPromptMapDisplayEnabled:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = a2;
    *(*(v3[4] + 8) + 40) = result;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9B381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B3834(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B39D0(uint64_t result, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a2;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLSetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v7, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v5 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLSetClientTransientAuthorizationInfo failed", "{msg%{public}.0s:#Spi, CLSetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v7, 0x1Cu);
    }

    result = [a2 copy];
    *(*(*(v3 + 32) + 8) + 40) = result;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9B3C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B3C84(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLGetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLGetClientTransientAuthorizationInfo failed", "{msg%{public}.0s:#Spi, CLGetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = a2;
    }
  }

  result = [a3 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9B3F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B3F38(uint64_t a1, uint64_t a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalChangeClientAuthorizationTime failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalChangeClientAuthorizationTime failed", "{msg%{public}.0s:#Spi, CLInternalChangeClientAuthorizationTime failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B9B41B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B41CC(void *result, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a2;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalTriggerExpiredAuthorizationPurge failed, error:%{public, location:escape_only}@}", &v7, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v5 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalTriggerExpiredAuthorizationPurge failed", "{msg%{public}.0s:#Spi, CLInternalTriggerExpiredAuthorizationPurge failed, error:%{public, location:escape_only}@}", &v7, 0x1Cu);
    }

    result = a2;
    *(*(v3[4] + 8) + 40) = result;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9B43B8(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetGestureServiceEnabled failed", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setGestureServiceEnabled:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B9B4608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B4620(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_19B9B4720(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B4808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B4820(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

_BYTE **sub_19B9B4AFC(_BYTE **result, void *a2, char a3)
{
  v3 = result;
  if (a2)
  {
    result = a2;
    *(*(v3[5] + 1) + 40) = result;
  }

  else
  {
    *result[6] = a3;
    *(*(result[4] + 1) + 24) = 1;
  }

  return result;
}

void sub_19B9B4D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B4FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B5234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B549C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B5590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B55A8(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

void sub_19B9B5764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5794(void *a1, void *a2, char a3)
{
  result = a2;
  *(*(a1[4] + 8) + 40) = result;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_19B9B5964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5988(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B5B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5B54(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B5CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5D10(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B5E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5EBC(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B5FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B600C(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = [a3 getBytes:*(result + 40) length:156];
    *(*(*(v3 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B613C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_19B9B6154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = *(a1 + 40);
    result = *a3;
    v5 = *(a3 + 16);
    *v3 = *a3;
    v3[1] = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B6540(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "#Spi,RouteHintError,Couldn't set map-matching route hint!", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setMapMatchingRouteHint:count:routingType:stepType:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B9B68C4(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "#Spi,CLTR,TrackRunHintError,Couldn't set track run hint!", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setTrackRunHint:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B9B6CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B6CD8(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryPASCDTransmissionState,failed", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getAccessoryPASCDTransmissionState]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    a3 = 4;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B9B712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B7150(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi,getOdometryBatchedLocations,returned with error", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient getOdometryBatchedLocations]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v13 = [a3 count];
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#Spi,getOdometryBatchedLocations,received data count,%{public}lu", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      [a3 count];
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getOdometryBatchedLocations]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *(*(*(a1 + 32) + 8) + 40) = a3;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B9B76B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B7914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B7A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B7A1C(uint64_t a1, uint64_t a2, char a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 48);
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v5;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Getting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v9, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v7 = *(a1 + 48);
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v7;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Getting status bar enabled for entity class failed", "{msg%{public}.0s:Getting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v9, 0x1Cu);
    }
  }

  else
  {
    **(a1 + 40) = a3;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B9B7C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B7C8C(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_19B9B7DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B7DC8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    a3 = [MEMORY[0x1E695DEC8] array];
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B9B7EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B7EE0(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = [a3 getBytes:*(result + 40) length:320];
    *(*(*(v3 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B8014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B814C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B8318(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B83FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B87A8(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(result + 48);
  **(result + 40) = a4;
  *v9 = a5;
  v10 = *(result + 64);
  **(result + 56) = a6;
  *v10 = a7;
  v11 = *(result + 80);
  **(result + 72) = a8;
  *v11 = a9;
  **(result + 88) = a3;
  *(*(*(result + 32) + 8) + 40) = a2;
  return result;
}

uint64_t sub_19B9B87E4(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(result + 48);
  **(result + 40) = a4;
  *v9 = a5;
  v10 = *(result + 64);
  **(result + 56) = a6;
  *v10 = a7;
  v11 = *(result + 80);
  **(result + 72) = a8;
  *v11 = a9;
  **(result + 88) = a3;
  *(*(*(result + 32) + 8) + 40) = a2;
  return result;
}

void sub_19B9B88E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B8900(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 48);
  **(result + 40) = a3;
  *v4 = a4;
  *(*(*(result + 32) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B89CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B8AE0(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B9B8BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B8C04(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B9B8D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B8D34(void *result, void *a2, int a3, int a4)
{
  v6 = result;
  if (a2)
  {
    result = a2;
    *(*(v6[4] + 8) + 40) = result;
  }

  v7 = v6[5];
  if (v7)
  {
    *v7 = a3;
  }

  v8 = v6[6];
  if (v8)
  {
    *v8 = a4;
  }

  return result;
}

void sub_19B9B8E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B8F58(uint64_t a1, void *a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (a2)
  {
    result = a2;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_19B9B907C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B9094(uint64_t a1, void *a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (a2)
  {
    result = a2;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_19B9B91D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B91F0(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B9B931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B9338(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B9B946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B982C(uint64_t result, double a2, double a3, uint64_t a4, char a5)
{
  *(*(*(result + 32) + 8) + 24) = a5;
  v5 = *(result + 40);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_19B9B99CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B99E4(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 24) = a3;
    return CFRetain(*(*(result[4] + 8) + 24));
  }

  return result;
}

void sub_19B9B9AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9BA0A8(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9BA188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "#Spi, TimeSyncWithReplyBlock failed", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient timeSyncMachTimeStamp:oscarTimeStamp:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    **(a1 + 40) = a3;
    **(a1 + 48) = a4;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B9BA42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9BA638(uint64_t result, uint64_t a2, double a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9BA728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9BA740(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9BA830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9BA848(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9BA914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a2;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,getRecentLocationsBufferStatusWithReplyBlock failed with error %@", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient copyRecentLocationsBufferStatus]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    goto LABEL_18;
  }

  if (!a3)
  {
LABEL_18:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *MEMORY[0x1E69E9840];

  CFRetain(v7);
}

void sub_19B9BAB90(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = a2;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,triggerRecentLocationsRevisedFromMachContinuousTime,could not ping for revised locations notification %@", buf, 0xCu);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient triggerRecentLocationsRevisedFromMachContinuousTime:toMachContinuousTime:]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B9BAE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BAE88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,fetchRecentLocationAtCfAbsoluteTime,failed with error %@", &buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v22[0]) = 138412290;
      *(v22 + 4) = a2;
      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient fetchRecentLocationAtCfAbsoluteTime:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != &buf)
      {
        free(v8);
      }
    }
  }

  else if (a3 && [a3 count])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [a3 count];
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", &buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v22[0]) = 134217984;
      *(v22 + 4) = [a3 count];
      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient fetchRecentLocationAtCfAbsoluteTime:]_block_invoke", "CoreLocation: %s\n", v15);
      if (v15 != &buf)
      {
        free(v15);
      }
    }

    v31 = 0u;
    memset(v32, 0, 28);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    buf = 0u;
    [objc_msgSend(a3 objectAtIndexedSubscript:{0), "getBytes:length:", &buf, 156}];
    v21 = -1.0;
    [objc_msgSend(a4 objectAtIndexedSubscript:{0), "getValue:", &v21}];
    v16 = [CLLocationExtendedTimestamps alloc];
    v17 = objc_alloc(MEMORY[0x1E6985C40]);
    v22[6] = v30;
    v22[7] = v31;
    v23[0] = v32[0];
    *(v23 + 12) = *(v32 + 12);
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v22[5] = v29;
    v22[0] = buf;
    v22[1] = v25;
    v18 = [v17 initWithClientLocation:v22];
    v19 = [a5 objectAtIndexedSubscript:0];
    *(*(*(a1 + 32) + 8) + 40) = [(CLLocationExtendedTimestamps *)v16 initWithCLLocation:v18 systemTime:v19 machContinuousTimeSec:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B9BB3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BB408(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,fetchRecentLocationAtMachContinuousTime,failed with error %@", &buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v22[0]) = 138412290;
      *(v22 + 4) = a2;
      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient fetchRecentLocationAtMachContinuousTime:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != &buf)
      {
        free(v8);
      }
    }
  }

  else if (a3 && [a3 count])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [a3 count];
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", &buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v22[0]) = 134217984;
      *(v22 + 4) = [a3 count];
      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient fetchRecentLocationAtMachContinuousTime:]_block_invoke", "CoreLocation: %s\n", v15);
      if (v15 != &buf)
      {
        free(v15);
      }
    }

    v31 = 0u;
    memset(v32, 0, 28);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    buf = 0u;
    [objc_msgSend(a3 objectAtIndexedSubscript:{0), "getBytes:length:", &buf, 156}];
    v21 = -1.0;
    [objc_msgSend(a4 objectAtIndexedSubscript:{0), "getValue:", &v21}];
    v16 = [CLLocationExtendedTimestamps alloc];
    v17 = objc_alloc(MEMORY[0x1E6985C40]);
    v22[6] = v30;
    v22[7] = v31;
    v23[0] = v32[0];
    *(v23 + 12) = *(v32 + 12);
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v22[5] = v29;
    v22[0] = buf;
    v22[1] = v25;
    v18 = [v17 initWithClientLocation:v22];
    v19 = [a5 objectAtIndexedSubscript:0];
    *(*(*(a1 + 32) + 8) + 40) = [(CLLocationExtendedTimestamps *)v16 initWithCLLocation:v18 systemTime:v19 machContinuousTimeSec:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B9BB970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BB988(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,fetchRecentLocationsInLastSeconds,failed with error %@", &buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v24[0]) = 138412290;
      *(v24 + 4) = a2;
      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient fetchRecentLocationsInLastSeconds:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != &buf)
      {
        free(v8);
      }
    }
  }

  else if (a3 && [a3 count])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [a3 count];
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", &buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v24[0]) = 134217984;
      *(v24 + 4) = [a3 count];
      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient fetchRecentLocationsInLastSeconds:]_block_invoke", "CoreLocation: %s\n", v15);
      if (v15 != &buf)
      {
        free(v15);
      }
    }

    *(*(*(a1 + 32) + 8) + 40) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
    if ([a3 count])
    {
      v16 = 0;
      do
      {
        v33 = 0u;
        memset(v34, 0, 28);
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        buf = 0u;
        [objc_msgSend(a3 objectAtIndexedSubscript:{v16), "getBytes:length:", &buf, 156}];
        v23 = -1.0;
        [objc_msgSend(a4 objectAtIndexedSubscript:{v16), "getValue:", &v23}];
        v17 = [CLLocationExtendedTimestamps alloc];
        v18 = objc_alloc(MEMORY[0x1E6985C40]);
        v24[6] = v32;
        v24[7] = v33;
        v25[0] = v34[0];
        *(v25 + 12) = *(v34 + 12);
        v24[2] = v28;
        v24[3] = v29;
        v24[4] = v30;
        v24[5] = v31;
        v24[0] = buf;
        v24[1] = v27;
        v19 = [v18 initWithClientLocation:v24];
        v20 = [a5 objectAtIndexedSubscript:v16];
        [*(*(*(a1 + 32) + 8) + 40) addObject:{-[CLLocationExtendedTimestamps initWithCLLocation:systemTime:machContinuousTimeSec:](v17, "initWithCLLocation:systemTime:machContinuousTimeSec:", v19, v20, v23)}];
        ++v16;
      }

      while ([a3 count] > v16);
    }

    v21 = *(*(*(a1 + 32) + 8) + 40);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_19B9BBE70(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = a2;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,requestRouteReconstructionForPedestrian,could not request:%@", buf, 0xCu);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient requestRouteReconstructionForPedestrian]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B9BC0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetAuthorizationStatus", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetAuthorizationStatus, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9BC264()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_reportLocationUtilityEvent_atDate_);
}

void sub_19B9BC2AC(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLClearLocationAuthorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v4, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    v14 = 2114;
    v15 = a1;
    v16 = 2114;
    v17 = a2;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLClearLocationAuthorization, event:%{public, location:escape_only}s, bundleId:%{public, location:escape_only}@, bundlePath:%{public, location:escape_only}@}", buf, 0x30u);
  }

  [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v7);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B9BC420()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_clearLocationAuthorizations);
}

uint64_t CLCopyAppsUsingLocation()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyAppsUsingLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyAppsUsingLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLCopyActiveClientsUsingLocation()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyActiveClientsUsingLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyActiveClientsUsingLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLCopyInternalState()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyInternalState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyInternalState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void CLSetLocationDefault(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLSetLocationDefault", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v4, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    v14 = 2114;
    v15 = a1;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetLocationDefault, event:%{public, location:escape_only}s, key:%{public, location:escape_only}@}", buf, 0x26u);
  }

  [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v7);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t CLCopyZaxisStats()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyZaxisStats", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyZaxisStats, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLGetLocationDefault(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLGetLocationDefault", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    v14 = 2114;
    v15 = a1;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetLocationDefault, event:%{public, location:escape_only}s, key:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v4 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CLGetPipelinedCache()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLGetPipelinedCaches", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetPipelinedCaches, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLGetMotionSensorLogs()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLGetMotionSensorLogs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetMotionSensorLogs, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLGetAccessoryMotionSensorLogs()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLGetAccessoryMotionSensorLogs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetAccessoryMotionSensorLogs, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLApplyArchivedAuthorizationDecisions(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLApplyArchivedAuthorizationDecisions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLApplyArchivedAuthorizationDecisions, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CLGetArchivedAuthorizationDecisions(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLGetArchivedAuthorizationDecisions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetArchivedAuthorizationDecisions, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19B9BD300(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLTimeZoneAtLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLTimeZoneAtLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CLStartStopAdvertisingBeacon(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLStartStopAdvertisingBeacon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2113;
    v17 = a1;
    v18 = 2114;
    v19 = a2;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLStartStopAdvertisingBeacon, event:%{public, location:escape_only}s, region:%{private, location:escape_only}@, power:%{public, location:escape_only}@}", buf, 0x30u);
  }

  v6 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B9BD5D8()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_setPrivateMode_);
}

uint64_t sub_19B9BD618()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_getPrivateMode);
}

uint64_t CLPingDaemon()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLPingDaemon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPingDaemon, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void CLPassKitNotifyPayment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLPassKitNotifyPassUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v6, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPassKitNotifyPassUsage, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

void CLWeatherNotifyForecast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLWeatherNotifyForecastUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289282;
    v44 = 2082;
    v45 = "";
    v46 = 2082;
    v47 = "activity";
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLWeatherNotifyForecastUsage, event:%{public, location:escape_only}s}", &buf, 0x1Cu);
  }

  v9 = MEMORY[0x1E695DEC8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 arrayWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a1 copyItems:1];
  v29 = a5;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = [a1 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v17)
  {
    obj = a1;
    v31 = *v37;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v20 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (!v20)
        {
          goto LABEL_18;
        }

        v21 = 0;
        v22 = *v33;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v15);
            }

            v24 = *(*(&v32 + 1) + 8 * j);
            [v16 objectForKeyedSubscript:v19];
            v21 |= objc_opt_isKindOfClass();
          }

          v20 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v20);
        if ((v21 & 1) == 0)
        {
LABEL_18:
          [v16 removeObjectForKey:v19];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v17);
  }

  v25 = +[CLLocationInternalClient sharedServiceClient];
  [v29 coordinate];
  v27 = v26;
  [v29 coordinate];
  [v25 notifyWeatherForecast:v16 airQualityConditions:MEMORY[0x1E695E0F8] hourlyForecasts:MEMORY[0x1E695E0F0] dailyForecasts:MEMORY[0x1E695E0F0] latitude:v27 longitude:?];

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B9BDCA8()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_setLocationServicesEnabled_);
}

uint64_t sub_19B9BDCE8()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_getAuthorizationPromptMapDisplayEnabled_);
}

uint64_t CLGetClientTransientAuthorizationInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLGetClientTransientAuthorizationInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetClientTransientAuthorizationInfo, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CLSetClientTransientAuthorizationInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLSetClientTransientAuthorizationInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetClientTransientAuthorizationInfo, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9BE008()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_setAuthorizationPromptMapDisplayEnabled_);
}

uint64_t sub_19B9BE048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetPrecisionPermission", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetPrecisionPermission, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9BE1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetIncidentalUseMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetIncidentalUseMode, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CLInternalPerformMigration()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLInternalPerformMigration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalPerformMigration, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_19B9BE64C()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_shutdownDaemon);
}

uint64_t CLClientDisplayStats_0()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_displayStatistics);
}

uint64_t sub_19B9BE6AC()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_dumpLogs_);
}

uint64_t sub_19B9BE6EC()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_setStatusBarIconEnabled_forEntityClass_);
}

uint64_t sub_19B9BE734()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_getStatusBarIconEnabled_forEntityClass_);
}

uint64_t CLGetStatusBarIconState()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLGetStatusBarIconState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetStatusBarIconState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v2;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLStatusBarIconState received an icon stateu of %d", buf, 8u);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v9 = 67109120;
    v10 = v2;
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLStatusBarIconState CLGetStatusBarIconState()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  os_activity_scope_leave(&state);
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

void CLSetRouteHintsForMapMatching(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLSetRouteHintsForMapMatching", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v18 = 0;
    *&v18[4] = 2082;
    *&v18[6] = "";
    v19 = 2082;
    v20 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetRouteHintsForMapMatching, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *v18 = a3;
    *&v18[8] = 1024;
    *&v18[10] = a1;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d", buf, 0x12u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v13 = 134218240;
    v14 = a3;
    v15 = 1024;
    v16 = a1;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLSetRouteHintsForMapMatching(CLClientLocationRouteHintType, CLMapsRouteHint *, int)", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

void CLSetTrackRunHint(uint64_t *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLSetTrackRunHint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v22 = 0;
    *&v22[4] = 2082;
    *&v22[6] = "";
    v23 = 2082;
    v24 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetTrackRunHint, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 3);
    *buf = 134349569;
    *v22 = v5;
    *&v22[8] = 1025;
    *&v22[10] = v6;
    v23 = 1025;
    LODWORD(v24) = v7;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "TrackRunHint,CLSetTrackRunHint,received,MCTime,%{public}.1lf,lane,%{private}d,notification,%{private}d", buf, 0x18u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v9 = *a1;
    v10 = *(a1 + 2);
    v11 = *(a1 + 3);
    v15 = 134349569;
    v16 = v9;
    v17 = 1025;
    v18 = v10;
    v19 = 1025;
    v20 = v11;
    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLSetTrackRunHint(CLTrackRunHint *)", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&state);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t CLGetAccessoryPASCDTransmissionState()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEBUG, "CLGetAccessoryPASCDTransmissionState", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLClientPASCDTransmissionState CLGetAccessoryPASCDTransmissionState()", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  result = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CLGetOdometryBatchedLocations()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEFAULT, "CLGetOdometryBatchedLocations", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "NSDictionary *CLGetOdometryBatchedLocations()", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  result = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B9BF390()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_getGroundAltitudeForBundleID_orBundlePath_location_groundAltitude_);
}

uint64_t sub_19B9BF3F0()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_checkAndExerciseAuthorizationForBundleID_orBundlePath_services_error_);
}

uint64_t CLGetControlPlaneStatusReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = _os_activity_create(&dword_19B873000, "CL: CLGetControlPlaneStatusReport", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 1026;
    v29 = a1;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetControlPlaneStatusReport, event:%{public, location:escape_only}s, clear:%{public}d}", buf, 0x22u);
  }

  v18 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&state);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t CLGetEmergencyLocationSettingsVersionInfo(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLGetEmergencyLocationSettingsVersion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetEmergencyLocationSettingsVersion, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CLDeleteCurrentEmergencyLocationAsset()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLDeleteCurrentEmergencyLocationAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLDeleteCurrentEmergencyLocationAsset, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLCopyNearbyAssetSettings()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyNearbyAssetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyNearbyAssetSettings, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLCopyNearbyAssetSettingsOfAccessoryFile(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLCopyNearbyAssetSettingsOfAccessoryFile", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v2, &v6);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyNearbyAssetSettingsOfAccessoryFile, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (a1)
  {
    a1 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  }

  os_activity_scope_leave(&v6);
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t CLCopyRoutineAssetSettings(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLCopyRoutineAssetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyRoutineAssetSettings, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CLShouldDisplayEEDUI()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLShouldDisplayEEDUI", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v0, &v5);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLShouldDisplayEEDUI, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v2 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CLGetEEDCloakingKey()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_getEEDCloakingKey_);
}

uint64_t CLGetEEDEmergencyContactNames()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_getEEDEmergencyContactNames_);
}

uint64_t sub_19B9BFEA4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetTemporaryAuthorizationGranted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v12, &v19);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetTemporaryAuthorizationGranted, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v14 = +[CLLocationInternalClient sharedServiceClient];
  v15 = a3[1];
  *buf = *a3;
  *&buf[16] = v15;
  v16 = [v14 setTemporaryAuthorizationGranted:a4 forBundleID:a1 orBundlePath:a2 orAuditToken:buf byLocationButton:a5 voiceInteractionEnabled:a6];
  os_activity_scope_leave(&v19);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_19B9C0044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetTemporaryPreciseAuthorizationGranted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetTemporaryPreciseAuthorizationGranted, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9C01B4(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLInternalTearDownLocationAuthPrompt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalTearDownLocationAuthPrompt, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}