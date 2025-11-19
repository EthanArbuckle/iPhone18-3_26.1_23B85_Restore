id _CNCinematicError(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  if (a2)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = a2;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v3 errorWithDomain:@"CNCinematicErrorDomain" code:a1 userInfo:v6];
  }

  else
  {
    v6 = 0;
    v7 = [v3 errorWithDomain:@"CNCinematicErrorDomain" code:a1 userInfo:0];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

BOOL getEligibleCinematicAudioVersion(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = 0;
    do
    {
      [v1 objectAtIndexedSubscript:v2];

      EligibleCinematicAudioEffectVersion = FigAudioFormatDescriptionGetEligibleCinematicAudioEffectVersion();
      v4 = EligibleCinematicAudioEffectVersion == 0;
      if (!EligibleCinematicAudioEffectVersion)
      {
        break;
      }

      ++v2;
    }

    while (v2 < [v1 count]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id FOAPlusDialogChannelLayoutAsData()
{
  v8 = *MEMORY[0x277D85DE8];
  v6[2] = xmmword_236F67FB0;
  v6[3] = unk_236F67FC0;
  v6[4] = xmmword_236F67FD0;
  v6[5] = unk_236F67FE0;
  v6[0] = xmmword_236F67F90;
  v6[1] = unk_236F67FA0;
  v7 = 1065353216;
  v5 = 5;
  v4 = 0;
  v0 = [MEMORY[0x277CBEB28] dataWithBytes:&v4 length:12];
  [v0 appendBytes:v6 length:100];
  v1 = [v0 copy];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __retrieveCinematicAudioRemixMetadataFromTrack_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"mdta/com.apple.quicktime.cinematic-audio"];

  return v3;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_236F56034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _CNLoadFirstAssociatedTrack(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___CNLoadFirstAssociatedTrack_block_invoke;
  v11[3] = &unk_278A16218;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v8 = v7;
  v9 = v5;
  v10 = v6;
  [v9 loadAssociatedTracksOfType:v10 completionHandler:v11];
}

void sub_236F57554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_236F5A58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236F5AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5B154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5B6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5B91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5C044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5C2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5C9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5CCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5CF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5D168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5D438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5D638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_236F5DB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _CNLogSystem()
{
  if (_CNLogSystem_onceToken[0] != -1)
  {
    _CNLogSystem_cold_1();
  }

  v1 = _CNLogSystem_log;

  return v1;
}

id sub_236F5F144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char **a4@<X3>, void *a5@<X8>)
{
  v7 = *(v5 + 16);
  v8 = *a4;
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  result = [v7 v8];
  *a5 = result;
  return result;
}

char *sub_236F5F19C(_OWORD *a1)
{
  v2 = a1[1];
  v13[0] = *a1;
  v13[1] = v2;
  v13[2] = a1[2];
  v3 = [*(v1 + 16) detectionsInTimeRange_];
  sub_236F5F31C();
  v4 = sub_236F668BC();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v5 = sub_236F6694C();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  *&v13[0] = MEMORY[0x277D84F90];
  result = sub_236F5FBBC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = *&v13[0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383C2EA0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      *&v13[0] = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v9;
        sub_236F5FBBC((v10 > 1), v11 + 1, 1);
        v9 = v12;
        v8 = *&v13[0];
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      *(v8 + 8 * v11 + 32) = v9;
    }

    while (v5 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_236F5F31C()
{
  result = qword_27DE8EE60;
  if (!qword_27DE8EE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE8EE60);
  }

  return result;
}

uint64_t CNDetectionTrack.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t CNFixedDetectionTrack.__allocating_init(focusDisparity:)(float a1)
{
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(CNFixedDetectionTrack);
  *&v4 = a1;
  *(v2 + 16) = [v3 initWithFocusDisparity_];
  return v2;
}

uint64_t CNFixedDetectionTrack.init(focusDisparity:)(float a1)
{
  v3 = objc_allocWithZone(CNFixedDetectionTrack);
  *&v4 = a1;
  *(v1 + 16) = [v3 initWithFocusDisparity_];
  return v1;
}

uint64_t CNFixedDetectionTrack.__allocating_init(originalDetection:)(void **a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = [objc_allocWithZone(CNFixedDetectionTrack) initWithOriginalDetection_];

  *(v2 + 16) = v4;
  return v2;
}

uint64_t CNFixedDetectionTrack.init(originalDetection:)(void *a1)
{
  v2 = *a1;
  v3 = [objc_allocWithZone(CNFixedDetectionTrack) initWithOriginalDetection_];

  *(v1 + 16) = v3;
  return v1;
}

id sub_236F5F524()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();

  return [v2 focusDisparity];
}

id sub_236F5F580@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  objc_opt_self();
  result = [swift_dynamicCastObjCClassUnconditional() originalDetection];
  *a1 = result;
  return result;
}

uint64_t CNCustomDetectionTrack.__allocating_init(detections:smooth:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  CNCustomDetectionTrack.init(detections:smooth:)(a1, a2);
  return v4;
}

uint64_t CNCustomDetectionTrack.init(detections:smooth:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_236F6691C();
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      sub_236F668FC();
      v9 = *(v14 + 16);
      sub_236F6692C();
      sub_236F6693C();
      sub_236F6690C();
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v10 = objc_allocWithZone(CNCustomDetectionTrack);
  sub_236F5F31C();
  v11 = sub_236F668AC();

  v12 = [v10 initWithDetections:v11 smooth:a2 & 1];

  *(v3 + 16) = v12;
  return v3;
}

char *sub_236F5F760()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() allDetections];
  sub_236F5F31C();
  v3 = sub_236F668BC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_236F6694C();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  result = sub_236F5FBBC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v12;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383C2EA0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        sub_236F5FBBC((v9 > 1), v10 + 1, 1);
        v8 = v11;
      }

      ++v6;
      *(v12 + 16) = v10 + 1;
      *(v12 + 8 * v10 + 32) = v8;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_236F5F904@<X0>(uint64_t *a1@<X8>)
{
  result = sub_236F6699C();
  *a1 = result;
  return result;
}

uint64_t sub_236F5F92C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x2383C2F30](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_236F5F980(uint64_t a1, uint64_t a2)
{
  v3 = sub_236F6698C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

void *sub_236F5F9D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_236F5F9F4()
{
  v2 = *v0;
  sub_236F60074(&qword_27DE8EED0, type metadata accessor for CNDetectionID);
  sub_236F60074(&qword_27DE8EED8, type metadata accessor for CNDetectionID);
  return sub_236F6695C();
}

uint64_t sub_236F5FAB0()
{
  v2 = *v0;
  sub_236F60074(&qword_27DE8EEC0, type metadata accessor for CNDetectionGroupID);
  sub_236F60074(&qword_27DE8EEC8, type metadata accessor for CNDetectionGroupID);
  return sub_236F6695C();
}

char *sub_236F5FBBC(char *a1, int64_t a2, char a3)
{
  result = sub_236F603A8(a1, a2, a3, *v3, &qword_27DE8EF00, &qword_236F684A8);
  *v3 = result;
  return result;
}

uint64_t dispatch thunk of CNDetectionTrack.detections(in:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*v1 + 152);
  v5[0] = *a1;
  v5[1] = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = v2;
  return v3(v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_236F5FEC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236F5FEE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_236F5FF78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236F5FF98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_236F60074(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_236F601DC(char *a1, int64_t a2, char a3)
{
  result = sub_236F602AC(a1, a2, a3, *v3, &qword_27DE8EEF8, &qword_236F684A0);
  *v3 = result;
  return result;
}

char *sub_236F6020C(char *a1, int64_t a2, char a3)
{
  result = sub_236F602AC(a1, a2, a3, *v3, &qword_27DE8EEF0, &qword_236F68498);
  *v3 = result;
  return result;
}

char *sub_236F6023C(char *a1, int64_t a2, char a3)
{
  result = sub_236F603A8(a1, a2, a3, *v3, &qword_27DE8EEE8, &qword_236F68490);
  *v3 = result;
  return result;
}

char *sub_236F60274(char *a1, int64_t a2, char a3)
{
  result = sub_236F603A8(a1, a2, a3, *v3, &qword_27DE8EEE0, &qword_236F68488);
  *v3 = result;
  return result;
}

char *sub_236F602AC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_236F603A8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_236F6050C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236F6052C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_236F6057C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t CNRenderingSession.Attributes.init(asset:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_236F60628, 0, 0);
}

uint64_t sub_236F60628()
{
  v1 = v0[20];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236F60760;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8EF80, &qword_236F684E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236F60968;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v2 loadFromAsset:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236F60760()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_236F608F8;
  }

  else
  {
    v3 = sub_236F60870;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236F60870()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = [v3 renderingVersion];

  *v2 = v3;
  v2[1] = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_236F608F8()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_236F60968(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE8F000, &qword_236F685D0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_236F60A50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_236F60B20(void *a1@<X0>, void **a2@<X1>, SEL *a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = objc_allocWithZone(CNRenderingSessionFrameAttributes);
  v9 = a1;
  v10 = [v8 *a3];

  if (v10)
  {
    v11 = v10;
    [v11 focusDisparity];
    v13 = v12;
    [v11 fNumber];
    v15 = v14;

    v16 = v13 | (v15 << 32);
  }

  else
  {

    v16 = 0;
  }

  *a4 = v10;
  a4[1] = v16;
}

uint64_t CNRenderingSession.__allocating_init(commandQueue:sessionAttributes:preferredTransform:quality:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = swift_allocObject();
  v12 = *a2;
  v11 = a2[1];
  v13 = objc_allocWithZone(CNRenderingSession);
  v14 = *(a3 + 16);
  v17[0] = *a3;
  v17[1] = v14;
  v18 = v8;
  v19 = v9;
  *(v10 + 16) = [v13 initWithCommandQueue:a1 sessionAttributes:v12 preferredTransform:v17 quality:a4];
  *(v10 + 24) = a1;
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;
  v15 = *(a3 + 16);
  *(v10 + 48) = *a3;
  *(v10 + 64) = v15;
  *(v10 + 80) = *(a3 + 32);
  *(v10 + 96) = a4;
  return v10;
}

uint64_t CNRenderingSession.init(commandQueue:sessionAttributes:preferredTransform:quality:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = *a2;
  v11 = a2[1];
  v12 = objc_allocWithZone(CNRenderingSession);
  v13 = *(a3 + 16);
  v16[0] = *a3;
  v16[1] = v13;
  v17 = v8;
  v18 = v9;
  *(v4 + 16) = [v12 initWithCommandQueue:a1 sessionAttributes:v10 preferredTransform:v16 quality:a4];
  *(v4 + 24) = a1;
  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  v14 = *(a3 + 16);
  *(v4 + 48) = *a3;
  *(v4 + 64) = v14;
  *(v4 + 80) = *(a3 + 32);
  *(v4 + 96) = a4;
  return v4;
}

id CNRenderingSession.sessionAttributes.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return v2;
}

__n128 CNRenderingSession.preferredTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  *(a1 + 32) = result;
  return result;
}

id sub_236F60DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v12 = *(a2 + 8);
  v13 = *(a2 + 12);
  v14 = *(v6 + 16);
  [*a2 mutableCopy];
  sub_236F668DC();
  swift_unknownObjectRelease();
  sub_236F61038(0, &qword_27DE8EF88, off_278A15DC8);
  swift_dynamicCast();
  LODWORD(v15) = v12;
  [v19 setFocusDisparity_];
  LODWORD(v16) = v13;
  [v19 setFNumber_];
  v17 = [v14 *a6];

  return v17;
}

id sub_236F60F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 8);
  v13 = *(a2 + 12);
  v14 = *(v6 + 16);
  [*a2 mutableCopy];
  sub_236F668DC();
  swift_unknownObjectRelease();
  sub_236F61038(0, &qword_27DE8EF88, off_278A15DC8);
  swift_dynamicCast();
  LODWORD(v15) = v12;
  [v19 setFocusDisparity_];
  LODWORD(v16) = v13;
  [v19 setFNumber_];
  v17 = [v14 encodeRenderToCommandBuffer:a1 frameAttributes:v19 sourceImage:a3 sourceDisparity:a4 destinationLuma:a5 destinationChroma:a6];

  return v17;
}

uint64_t sub_236F61038(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *sub_236F6108C(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  sub_236F61038(0, &unk_27DE8EF90, 0x277CCABB0);
  v2 = sub_236F668BC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_236F6694C();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  result = sub_236F601DC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v12;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383C2EA0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 unsignedIntValue];

      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_236F601DC((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v12 + 16) = v11 + 1;
      *(v12 + 4 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t CNRenderingSession.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t CNRenderingSession.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t dispatch thunk of CNRenderingSession.__allocating_init(commandQueue:sessionAttributes:preferredTransform:quality:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = *(v3 + 120);
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  v7[2] = a3[2];
  return v4(a1, a2, v7);
}

uint64_t sub_236F613A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236F613EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Cinematic::CNDetection __swiftcall CNDetection.init(time:detectionType:normalizedRect:focusDisparity:)(CMTime time, CNDetectionType detectionType, __C::CGRect normalizedRect, Swift::Float focusDisparity)
{
  height = normalizedRect.size.height;
  width = normalizedRect.size.width;
  y = normalizedRect.origin.y;
  x = normalizedRect.origin.x;
  epoch = time.epoch;
  timescale = time.timescale;
  value = time.value;
  v13 = v4;
  flags = time.flags;
  v15 = objc_allocWithZone(CNDetection);
  v20 = value;
  v21 = timescale;
  v22 = flags;
  v23 = epoch;
  *&v16 = focusDisparity;
  v17 = [v15 initWithTime:&v20 detectionType:0 normalizedRect:x focusDisparity:{y, width, height, v16}];
  *v13 = v17;
  result.internalDetection._creationHash = v19;
  result.internalDetection._internalDetection = v18;
  result.internalDetection.super.isa = v17;
  return result;
}

id sub_236F615CC(SEL *a1, SEL *a2)
{
  v4 = *v2;
  if ([objc_opt_self() *a2])
  {
    return [v4 *a1];
  }

  else
  {
    return 0;
  }
}

uint64_t static CNDetection.accessibilityLabel(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() accessibilityLabelForDetectionType_];
  v2 = sub_236F6689C();

  return v2;
}

id static CNDetection.disparity(in:sourceDisparity:detectionType:priorDisparity:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if ((a3 & 0x100000000) != 0)
  {
    v13 = NAN;
  }

  else
  {
    v13 = *&a3;
  }

  v14 = objc_opt_self();
  *&v15 = v13;

  return [v14 disparityInNormalizedRect:a1 sourceDisparity:a2 detectionType:a4 priorDisparity:{a5, a6, a7, v15}];
}

uint64_t sub_236F6175C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236F617A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_236F61810()
{
  v1 = v0[18];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_236F61948;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8F010, &qword_236F68618);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236F61A40;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v2 checkIfCinematic:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236F61948()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_236F61A28, 0, 0);
}

uint64_t sub_236F61A40(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t CNAssetInfo.__allocating_init(asset:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_236F61B5C;

  return CNAssetInfo.init(asset:)(a1);
}

uint64_t sub_236F61B5C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t CNAssetInfo.init(asset:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_236F61C7C, 0, 0);
}

uint64_t sub_236F61C7C()
{
  v1 = v0[19];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236F61DB4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8F018, &qword_236F68630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236F60968;
  v0[13] = &block_descriptor_5;
  v0[14] = v3;
  [v2 loadFromAsset:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236F61DB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_236F61F64;
  }

  else
  {
    v3 = sub_236F61EC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236F61EC4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  *(v1 + 16) = v3;
  v4 = v3;
  v5 = [v4 asset];

  *(v1 + 24) = v5;
  v6 = v0[1];
  v7 = v0[20];

  return v6(v7);
}

uint64_t sub_236F61F64()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  type metadata accessor for CNAssetInfo();
  swift_deallocPartialClassInstance();
  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

id sub_236F62028()
{
  v1 = [*(v0 + 16) cinematicVideoTrack];

  return v1;
}

id sub_236F62060()
{
  v1 = [*(v0 + 16) cinematicDisparityTrack];

  return v1;
}

id sub_236F62098()
{
  v1 = [*(v0 + 16) cinematicMetadataTrack];

  return v1;
}

double sub_236F620D0@<D0>(_OWORD *a1@<X8>)
{
  [*(v1 + 16) timeRange];
  *a1 = v4;
  a1[1] = v5;
  result = *&v6;
  a1[2] = v6;
  return result;
}

double sub_236F6213C@<D0>(_OWORD *a1@<X8>)
{
  [*(v1 + 16) preferredTransform];
  result = *&v4;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t CNAssetInfo.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id CNAssetInfo.frameTimingTrack.getter()
{
  v1 = [*(v0 + 16) frameTimingTrack];

  return v1;
}

uint64_t sub_236F62234(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  sub_236F61038(0, &qword_27DE8F020, 0x277CE6450);
  v3 = sub_236F668BC();

  return v3;
}

char *sub_236F622B4(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  sub_236F61038(0, &unk_27DE8EF90, 0x277CCABB0);
  v3 = sub_236F668BC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_236F6694C();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = MEMORY[0x277D84F90];
  result = sub_236F6020C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v13;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383C2EA0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 intValue];

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_236F6020C((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v12 + 1;
      *(v13 + 4 * v12 + 32) = v10;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

id sub_236F62448(_OWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a4;
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = HIDWORD(a4);
  v11 = a1[1];
  v22[0] = *a1;
  v22[1] = v11;
  v22[2] = a1[2];
  v12 = *(v5 + 16);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a2 + 16);
  v23[0] = 0;
  v18 = a3;
  v19 = v7;
  v20 = v10;
  v21 = a5;
  if ([v13 insertTimeRange:v22 ofCinematicAssetInfo:v14 atTime:&v18 error:v23])
  {
    result = v23[0];
  }

  else
  {
    v16 = v23[0];
    sub_236F6685C();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AVMutableComposition.addTracks(for:preferredStartingTrackID:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 addTracksForCinematicAssetInfo:*(a1 + 16) preferredStartingTrackID:a2];
  type metadata accessor for CNCompositionInfo();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = [v3 asset];
  return v4;
}

uint64_t dispatch thunk of static CNAssetInfo.isCinematic(asset:)(uint64_t a1)
{
  v4 = *(v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236F627A8;

  return v8(a1);
}

uint64_t sub_236F627A8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of CNAssetInfo.__allocating_init(asset:)(uint64_t a1)
{
  v4 = *(v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236F629B4;

  return v8(a1);
}

uint64_t sub_236F629B4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of CNCompositionInfo.insertTimeRange(_:of:at:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*v1 + 200);
  v5[0] = *a1;
  v5[1] = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = v2;
  return v3(v5);
}

Cinematic::CNDecision __swiftcall CNDecision.init(time:detectionID:strong:)(CMTime time, CNDetectionID detectionID, Swift::Bool strong)
{
  v4 = sub_236F62CC8(time.value, *&time.timescale, time.epoch, detectionID, strong, &selRef_initWithTime_detectionID_strong_, v3);
  result.internalDecision._internalDecision = v5;
  result.internalDecision.super.isa = v4;
  return result;
}

Cinematic::CNDecision __swiftcall CNDecision.init(time:detectionGroupID:strong:)(CMTime time, CNDetectionGroupID detectionGroupID, Swift::Bool strong)
{
  v4 = sub_236F62CC8(time.value, *&time.timescale, time.epoch, detectionGroupID, strong, &selRef_initWithTime_detectionGroupID_strong_, v3);
  result.internalDecision._internalDecision = v5;
  result.internalDecision.super.isa = v4;
  return result;
}

id sub_236F62CC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, const char **a6@<X5>, void *a7@<X8>)
{
  v11 = a2;
  v14 = HIDWORD(a2);
  v15 = objc_allocWithZone(CNDecision);
  v16 = *a6;
  v18 = a1;
  v19 = v11;
  v20 = v14;
  v21 = a3;
  result = [v15 v16];
  *a7 = result;
  return result;
}

id CNDecision.focusDetectionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 isGroupDecision];
  v5 = v4;
  v6 = &selRef_detectionGroupID;
  if (!v4)
  {
    v6 = &selRef_detectionID;
  }

  result = [v3 *v6];
  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

uint64_t static CNDecision.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_236F62EC8();
  return sub_236F668CC() & 1;
}

uint64_t sub_236F62E84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_236F62EC8();
  return sub_236F668CC() & 1;
}

unint64_t sub_236F62EC8()
{
  result = qword_27DE8F028;
  if (!qword_27DE8F028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE8F028);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CNDecision.FocusDetectionID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CNDecision.FocusDetectionID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double CNBoundsPrediction.normalizedBounds.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

void CNBoundsPrediction.normalizedBounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t CNObjectTracker.__allocating_init(commandQueue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(CNObjectTracker) initWithCommandQueue_];
  swift_unknownObjectRelease();
  *(v2 + 16) = v3;
  return v2;
}

uint64_t CNObjectTracker.init(commandQueue:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(CNObjectTracker) initWithCommandQueue_];
  swift_unknownObjectRelease();
  *(v1 + 16) = v2;
  return v1;
}

void sub_236F63140(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + 16) findObjectAtPoint:a1 sourceImage:?];
  v5 = v4;
  if (v4)
  {
    [v4 normalizedBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 confidence];
    v15 = v14;
  }

  else
  {
    v15 = 0;
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 36) = v5 == 0;
}

id sub_236F63204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return [v4 startTrackingAt:v6 within:? sourceImage:? sourceDisparity:?];
}

void sub_236F6324C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 16);
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  v7 = [v6 continueTrackingAt:v19 sourceImage:? sourceDisparity:?];
  v8 = v7;
  if (v7)
  {
    [v7 normalizedBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v8 confidence];
    v18 = v17;
  }

  else
  {
    v18 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14;
  *(a4 + 24) = v16;
  *(a4 + 32) = v18;
  *(a4 + 36) = v8 == 0;
}

uint64_t sub_236F6332C()
{
  v1 = [*(v0 + 16) finishDetectionTrack];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for CNFixedDetectionTrack();
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      type metadata accessor for CNDetectionTrack();
      goto LABEL_6;
    }

    v3 = v4;
    type metadata accessor for CNCustomDetectionTrack();
  }

  v1 = v3;
LABEL_6:
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t CNObjectTracker.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_236F63450(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236F63470(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 36) = v3;
  return result;
}

uint64_t sub_236F63600()
{
  v1 = v0[18];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_236F61948;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8F010, &qword_236F68618);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236F61A40;
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [v2 checkIfContainsSpatialAudio:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  return sub_236F60A50(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_236F63750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_236F63828;
  v8[3] = &block_descriptor_3;
  v7 = _Block_copy(v8);

  [v6 checkIfContainsSpatialAudio:a1 completionHandler:v7];
  _Block_release(v7);
}

uint64_t sub_236F63828(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_destroy_helper_2(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t CNAssetSpatialAudioInfo.__allocating_init(asset:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_236F61B5C;

  return CNAssetSpatialAudioInfo.init(asset:)(a1);
}

uint64_t CNAssetSpatialAudioInfo.init(asset:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_236F6395C, 0, 0);
}

uint64_t sub_236F6395C()
{
  v1 = v0[19];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236F63A94;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8F030, &qword_236F68820);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236F60968;
  v0[13] = &block_descriptor_8;
  v0[14] = v3;
  [v2 loadFromAsset:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236F63A94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_236F63C14;
  }

  else
  {
    v3 = sub_236F63BA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236F63BA4()
{
  v1 = *(v0 + 160);

  *(v1 + 16) = *(v0 + 144);
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2(v3);
}

uint64_t sub_236F63C14()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  type metadata accessor for CNAssetSpatialAudioInfo();
  swift_deallocPartialClassInstance();
  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

id sub_236F63CC4()
{
  v1 = [*(v0 + 16) defaultSpatialAudioTrack];

  return v1;
}

uint64_t sub_236F63D1C()
{
  v1 = [*(v0 + 16) spatialAudioMixMetadata];
  v2 = sub_236F6687C();

  return v2;
}

id sub_236F63D74(uint64_t a1)
{
  v2 = [*(v1 + 16) audioMixWithEffectIntensity:a1 renderingStyle:?];

  return v2;
}

uint64_t sub_236F63DC8(uint64_t a1, SEL *a2)
{
  v3 = [*(v2 + 16) *a2];
  v4 = sub_236F6688C();

  return v4;
}

uint64_t CNAssetSpatialAudioInfo.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t dispatch thunk of static CNAssetSpatialAudioInfo.assetContainsSpatialAudio(asset:)(uint64_t a1)
{
  v4 = *(v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236F627A8;

  return v8(a1);
}

uint64_t dispatch thunk of CNAssetSpatialAudioInfo.__allocating_init(asset:)(uint64_t a1)
{
  v4 = *(v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236F629B4;

  return v8(a1);
}

id CNScript.Frame.focusDetection.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 focusDetection];
  *a1 = result;
  return result;
}

Cinematic::CNDetection_optional __swiftcall CNScript.Frame.detection(for:)(CNDetectionID a1)
{
  v3 = v1;
  v4 = [*v2 detectionForID_];
  *v3 = v4;
  result.value.internalDetection._creationHash = v6;
  result.value.internalDetection._internalDetection = v5;
  result.value.internalDetection.super.isa = v4;
  result.is_nil = v7;
  return result;
}

Cinematic::CNDetection_optional __swiftcall CNScript.Frame.bestDetection(for:)(CNDetectionGroupID a1)
{
  v3 = v1;
  v4 = [*v2 bestDetectionForGroupID_];
  *v3 = v4;
  result.value.internalDetection._creationHash = v6;
  result.value.internalDetection._internalDetection = v5;
  result.value.internalDetection.super.isa = v4;
  result.is_nil = v7;
  return result;
}

uint64_t CNScript.__allocating_init(asset:changes:progress:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_236F61B5C;

  return CNScript.init(asset:changes:progress:)(a1, a2, a3);
}

uint64_t CNScript.init(asset:changes:progress:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[19] = a1;
  v5 = *a2;
  v4[22] = *v3;
  v4[23] = v5;
  return MEMORY[0x2822009F8](sub_236F64418, 0, 0);
}

uint64_t sub_236F64418()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236F64564;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8F038, &qword_236F68888);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236F60968;
  v0[13] = &block_descriptor_2;
  v0[14] = v5;
  [v4 loadFromAsset:v3 changes:v1 progress:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236F64564()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_236F646FC;
  }

  else
  {
    v3 = sub_236F64674;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236F64674()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);

  *(v2 + 16) = *(v0 + 144);
  v4 = *(v0 + 8);
  v5 = *(v0 + 168);

  return v4(v5);
}

uint64_t sub_236F646FC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  swift_willThrow();

  swift_deallocPartialClassInstance();
  v7 = v0[1];
  v8 = v0[24];

  return v7();
}

Cinematic::CNScript::Changes __swiftcall CNScript.changes()()
{
  v2 = v0;
  v3 = [*(v1 + 16) changes];
  *v2 = v3;
  result.internalChanges._internalChanges = v4;
  result.internalChanges.super.isa = v3;
  return result;
}

Cinematic::CNScript::Changes __swiftcall CNScript.changes(trimmedBy:)(CMTimeRange *trimmedBy)
{
  v3 = v1;
  v4 = *&trimmedBy->start.epoch;
  v8[0] = *&trimmedBy->start.value;
  v8[1] = v4;
  v8[2] = *&trimmedBy->duration.timescale;
  v5 = [*(v2 + 16) changesTrimmedByTimeRange_];
  *v3 = v5;
  result.internalChanges._internalChanges = v6;
  result.internalChanges.super.isa = v5;
  return result;
}

double CNScript.timeRange.getter@<D0>(_OWORD *a1@<X8>)
{
  [*(v1 + 16) timeRange];
  *a1 = v4;
  a1[1] = v5;
  result = *&v6;
  a1[2] = v6;
  return result;
}

Cinematic::CNScript::Frame_optional __swiftcall CNScript.frame(at:tolerance:)(CMTime at, CMTime tolerance)
{
  v3 = sub_236F648D8(at.value, *&at.timescale, at.epoch, tolerance.value, *&tolerance.timescale, tolerance.epoch, &selRef_frameAtTime_tolerance_, v2);
  result.value.internalFrame._internalFrame = v4;
  result.value.internalFrame.super.isa = v3;
  result.is_nil = v5;
  return result;
}

Cinematic::CNDecision_optional __swiftcall CNScript.decision(at:tolerance:)(CMTime at, CMTime tolerance)
{
  v3 = sub_236F648D8(at.value, *&at.timescale, at.epoch, tolerance.value, *&tolerance.timescale, tolerance.epoch, &selRef_decisionAtTime_tolerance_, v2);
  result.value.internalDecision._internalDecision = v4;
  result.value.internalDecision.super.isa = v3;
  result.is_nil = v5;
  return result;
}

id sub_236F648D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char **a7@<X6>, void *a8@<X8>)
{
  v10 = *(v8 + 16);
  v11 = *a7;
  v13[2] = a6;
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v13[0] = a4;
  v13[1] = a5;
  result = [v10 v11];
  *a8 = result;
  return result;
}

uint64_t sub_236F64970(_OWORD *a1, SEL *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t))
{
  v9 = a1[1];
  v20[0] = *a1;
  v20[1] = v9;
  v20[2] = a1[2];
  v10 = [*(v5 + 16) *a2];
  sub_236F61038(0, a3, a4);
  v11 = sub_236F668BC();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v12 = sub_236F6694C();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  *&v20[0] = MEMORY[0x277D84F90];
  result = a5(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = *&v20[0];
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2383C2EA0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      *&v20[0] = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = v16;
        a5(v17 > 1, v18 + 1, 1);
        v16 = v19;
        v15 = *&v20[0];
      }

      ++v14;
      *(v15 + 16) = v18 + 1;
      *(v15 + 8 * v18 + 32) = v16;
    }

    while (v12 != v14);

    return v15;
  }

  __break(1u);
  return result;
}

Cinematic::CNDecision_optional __swiftcall CNScript.decision(after:)(CMTime after)
{
  v2 = sub_236F5F144(after.value, *&after.timescale, after.epoch, &selRef_decisionAfterTime_, v1);
  result.value.internalDecision._internalDecision = v3;
  result.value.internalDecision.super.isa = v2;
  result.is_nil = v4;
  return result;
}

Cinematic::CNDecision_optional __swiftcall CNScript.decision(before:)(CMTime before)
{
  v2 = sub_236F5F144(before.value, *&before.timescale, before.epoch, &selRef_decisionBeforeTime_, v1);
  result.value.internalDecision._internalDecision = v3;
  result.value.internalDecision.super.isa = v2;
  result.is_nil = v4;
  return result;
}

Cinematic::CNDecision_optional __swiftcall CNScript.primaryDecision(at:)(CMTime at)
{
  v2 = sub_236F5F144(at.value, *&at.timescale, at.epoch, &selRef_primaryDecisionAtTime_, v1);
  result.value.internalDecision._internalDecision = v3;
  result.value.internalDecision.super.isa = v2;
  result.is_nil = v4;
  return result;
}

Cinematic::CNDecision_optional __swiftcall CNScript.secondaryDecision(at:)(CMTime at)
{
  v2 = sub_236F5F144(at.value, *&at.timescale, at.epoch, &selRef_secondaryDecisionAtTime_, v1);
  result.value.internalDecision._internalDecision = v3;
  result.value.internalDecision.super.isa = v2;
  result.is_nil = v4;
  return result;
}

void *CNScript.detectionTrack(for:)(uint64_t a1)
{
  result = [*(v1 + 16) detectionTrackForID_];
  if (result)
  {
    v3 = result;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for CNFixedDetectionTrack();
    }

    else
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        type metadata accessor for CNDetectionTrack();
        goto LABEL_7;
      }

      v5 = v6;
      type metadata accessor for CNCustomDetectionTrack();
    }

    v3 = v5;
LABEL_7:
    result = swift_allocObject();
    result[2] = v3;
  }

  return result;
}

void *CNScript.detectionTrack(for:)(void *a1)
{
  result = [*(v1 + 16) detectionTrackForDecision_];
  if (result)
  {
    v3 = result;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for CNFixedDetectionTrack();
    }

    else
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        type metadata accessor for CNDetectionTrack();
        goto LABEL_7;
      }

      v5 = v6;
      type metadata accessor for CNCustomDetectionTrack();
    }

    v3 = v5;
LABEL_7:
    result = swift_allocObject();
    result[2] = v3;
  }

  return result;
}

id (*CNScript.fNumber.modify(uint64_t a1))(uint64_t a1, double a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  [v3 fNumber];
  *(a1 + 8) = v4;
  return sub_236F64E14;
}

uint64_t CNScript.addedDetectionTracks.getter()
{
  v1 = [*(v0 + 16) addedDetectionTracks];
  sub_236F61038(0, &unk_27DE8F050, off_278A15DA0);
  v2 = sub_236F668BC();

  if (v2 >> 62)
  {
    v3 = sub_236F6694C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:

    return MEMORY[0x277D84F90];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  result = sub_236F6691C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383C2EA0](v5, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v5 + 32);
      }

      v7 = v9;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v6 = v10;
        type metadata accessor for CNFixedDetectionTrack();
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (!v11)
        {
          type metadata accessor for CNDetectionTrack();
          goto LABEL_7;
        }

        v6 = v11;
        type metadata accessor for CNCustomDetectionTrack();
      }

      v7 = v6;
LABEL_7:
      *(swift_allocObject() + 16) = v7;
      ++v5;
      sub_236F668FC();
      v8 = *(v12 + 16);
      sub_236F6692C();
      sub_236F6693C();
      sub_236F6690C();
      if (v3 == v5)
      {

        return v12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t CNScript.Changes.init(dataRepresentation:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(CNScriptChanges);
  v7 = sub_236F6686C();
  v8 = [v6 initWithDataRepresentation_];

  result = sub_236F655A8(a1, a2);
  *a3 = v8;
  return result;
}

uint64_t CNScript.Changes.dataRepresentation.getter()
{
  v1 = [*v0 dataRepresentation];
  v2 = sub_236F6687C();

  return v2;
}

uint64_t sub_236F651C8(SEL *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v8 = [*v4 *a1];
  sub_236F61038(0, a2, a3);
  v9 = sub_236F668BC();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v10 = sub_236F6694C();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = MEMORY[0x277D84F90];
  result = a4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v18;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2383C2EA0](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        v17 = v14;
        a4(v15 > 1, v16 + 1, 1);
        v14 = v17;
      }

      ++v12;
      *(v18 + 16) = v16 + 1;
      *(v18 + 8 * v16 + 32) = v14;
    }

    while (v10 != v12);

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t CNScript.Changes.addedDetectionTracks.getter()
{
  v1 = [*v0 addedDetectionTracks];
  sub_236F61038(0, &unk_27DE8F050, off_278A15DA0);
  v2 = sub_236F668BC();

  if (v2 >> 62)
  {
    v3 = sub_236F6694C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:

    return MEMORY[0x277D84F90];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  result = sub_236F6691C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383C2EA0](v5, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v5 + 32);
      }

      v7 = v9;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v6 = v10;
        type metadata accessor for CNFixedDetectionTrack();
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (!v11)
        {
          type metadata accessor for CNDetectionTrack();
          goto LABEL_7;
        }

        v6 = v11;
        type metadata accessor for CNCustomDetectionTrack();
      }

      v7 = v6;
LABEL_7:
      *(swift_allocObject() + 16) = v7;
      ++v5;
      sub_236F668FC();
      v8 = *(v12 + 16);
      sub_236F6692C();
      sub_236F6693C();
      sub_236F6690C();
      if (v3 == v5)
      {

        return v12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t CNScript.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_236F655A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_236F655FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*(*a1 + 16) fNumber];
  *a2 = v4;
  return result;
}

uint64_t dispatch thunk of CNScript.__allocating_init(asset:changes:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_236F629B4;

  return v12(a1, a2, a3);
}