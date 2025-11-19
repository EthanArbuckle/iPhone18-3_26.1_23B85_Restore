id NLWorkoutComplicationLocalizedString(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v7 = 0;
  objc_storeStrong(&v7, a2);
  v5 = NLWorkoutComplicationBundle();
  v6 = [v5 localizedStringForKey:location value:&stru_10518 table:{@"Localizable", a1}];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);

  return v6;
}

id NLWorkoutComplicationBundle()
{
  predicate = &NLWorkoutComplicationBundle_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_9);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = NLWorkoutComplicationBundle___bundle;

  return v0;
}

UIImage *NLWorkoutComplicationImageNamed(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = location;
  v3 = NLWorkoutComplicationBundle();
  v4 = [UIImage imageNamed:"imageNamed:inBundle:compatibleWithTraitCollection:" inBundle:v2 compatibleWithTraitCollection:?];

  objc_storeStrong(&location, 0);

  return v4;
}

id NLWorkoutNoNonGradientTextColor()
{
  predicate = &NLWorkoutNoNonGradientTextColor_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = NLWorkoutNoNonGradientTextColor___color;

  return v0;
}

id NLWorkoutKeyNonGradientTextColor()
{
  predicate = &NLWorkoutKeyNonGradientTextColor_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_7);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = NLWorkoutKeyNonGradientTextColor___color;

  return v0;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_68A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, _Unwind_Exception *exception_object)
{
  objc_destroyWeak((v20 - 40));
  objc_destroyWeak((v20 - 24));
  _Unwind_Resume(a1);
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}