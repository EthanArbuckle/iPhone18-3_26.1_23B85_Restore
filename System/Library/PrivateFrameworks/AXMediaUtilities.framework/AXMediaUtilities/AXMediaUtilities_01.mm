void *__getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VN4QuphG8kE4qDaDycivBkX5");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VN7gQUejje8mmnE9GSTsVBVV");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VNa9xpOJNvRoaW9plFGZ9Eo0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VN2vIWnsZbk4Su55oeWfKDq1");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VNmNJnu0xlW8CZXt6hJ7Rpb0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VN35FOB1QhtSfYGRIJvTgtTq");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VN6ZsEIQ9ri2eF1vhsxw5COm");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXMHasInternalSecurityPrivilages()
{
  if (AXMHasInternalSecurityPrivilages_onceToken != -1)
  {
    AXMHasInternalSecurityPrivilages_cold_1();
  }

  return AXMHasInternalSecurityPrivilages__IsInternal;
}

uint64_t __AXMHasInternalSecurityPrivilages_block_invoke()
{
  [AXMBundleID UTF8String];
  result = os_variant_allows_internal_security_policies();
  AXMHasInternalSecurityPrivilages__IsInternal = result;
  return result;
}

id AXMWorkingDirectory(int a1)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSHomeDirectory();
  v4 = [v2 fileURLWithPath:v3];
  v5 = [v4 URLByAppendingPathComponent:@"Library/Accessibility"];

  if (a1)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v5 path];
    v8 = [v6 fileExistsAtPath:v7 isDirectory:0];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 path];
      v13 = 0;
      [v6 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v13];
      v10 = v13;

      if (v10)
      {
        v11 = AXMediaLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          AXMWorkingDirectory_cold_1(v5, v10, v11);
        }
      }
    }
  }

  return v5;
}

id AXMDescription(void *a1)
{
  v1 = MEMORY[0x1E696AD60];
  v2 = a1;
  v3 = [v1 string];
  [v2 axmAppendRecursiveDescription:v3 withIndentation:0];

  return v3;
}

id _AXMMakeError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = AXMMakeError_(a1, v12);

  return v13;
}

id AXMMakeError_(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = a2;
  v4 = MEMORY[0x1E695DF20];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:@"AXMediaUtilities" code:a1 userInfo:v6];

  return v7;
}

__n64 AXMCGRectFromCGPoints(unint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    result.n64_u64[0] = *a1;
    v3 = a1[1];
    if (a2 >= 2)
    {
      v4 = a2 - 1;
      v5 = (a1 + 3);
      v6 = 0;
      v7 = 0;
      do
      {
        v8.origin.x = *(v5 - 1);
        v8.origin.y = *v5;
        v8.size.width = 0.0;
        v8.size.height = 0.0;
        *result.n64_u64 = CGRectUnion(*result.n64_u64, v8);
        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    return *MEMORY[0x1E695F058];
  }

  return result;
}

double AXMRectCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double AXMRectDistance(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MidX = CGRectGetMidX(*&a1);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  MidY = CGRectGetMidY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v17 = CGRectGetMidX(v22);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  v18 = CGRectGetMidY(v23);
  return sqrt((MidY - v18) * (MidY - v18) + (MidX - v17) * (MidX - v17));
}

uint64_t AXMEXIFOrientationForDeviceOrientationAndCameraPosition(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return 1;
  }

  if ((a1 - 1) > 3)
  {
    return 6;
  }

  return dword_1AE452310[a1 - 1];
}

id __AXMStringForVariables(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v9 = __AXMStringForVariablesWithVariadics(a1, &a9);

  return v9;
}

id __AXMStringForVariablesWithVariadics(void *a1, id *a2)
{
  v3 = a1;
  v11 = a2;
  objc_opt_class();
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    [v4 appendString:v3];
  }

  while (1)
  {
    v5 = v11++;
    v6 = *v5;
    if (!v6 || (objc_opt_isKindOfClass() & 1) == 0 || ![v6 length])
    {
      goto LABEL_12;
    }

    if ([v6 isEqualToString:@"__AXMStringForVariablesSentinel"])
    {
      break;
    }

    v7 = MEMORY[0x1E696AEC0];
    if ([v4 length])
    {
      v8 = @", %@";
    }

    else
    {
      v8 = @"%@";
    }

    v9 = [v7 stringWithFormat:v8, v6];
    [v4 appendString:v9];

LABEL_12:
  }

  return v4;
}

id AXMLabelForNSStringElements(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = [v4 count];
  v6 = [MEMORY[0x1E696AD60] string];
  if (v5)
  {
    v7 = [v4 firstObject];
    [v6 appendString:v7];

    v8 = v5 - 1;
    if (v5 != 1)
    {
      v9 = 1;
      v10 = @" %@";
      v21 = v4;
      while (1)
      {
        v11 = [v4 objectAtIndex:v9];
        if (v9 == 1)
        {
          if (a2)
          {
            break;
          }
        }

        if (v8 != 1 || !a3)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v11];
          goto LABEL_11;
        }

        [v6 appendString:@" "];
        v12 = a2;
        v13 = v10;
        v14 = MEMORY[0x1E696AEC0];
        v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v16 = [v15 localizedStringForKey:@"last.string.to.append.in.a.sentence" value:&stru_1F23EA908 table:@"Accessibility"];
        v17 = [v14 stringWithFormat:v16, v11];
        [v6 appendString:v17];

        v10 = v13;
        a2 = v12;
        v4 = v21;

LABEL_12:
        ++v9;
        if (!--v8)
        {
          goto LABEL_13;
        }
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:v10, v11];
      v15 = LABEL_11:;
      [v6 appendString:v15];
      goto LABEL_12;
    }

LABEL_13:
    v18 = v6;
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] string];
  }

  v19 = v18;

  return v19;
}

id _AXMCachedDateFormatterForFormat(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  if (_AXMCachedDateFormatterForFormat_onceToken != -1)
  {
    _AXMCachedDateFormatterForFormat_cold_1();
  }

  v2 = _AXMCachedDateFormatterForFormat_AXDateFormatterQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___AXMCachedDateFormatterForFormat_block_invoke_2;
  v6[3] = &unk_1E7A1CAE8;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AXMDateStringForFormat(void *a1, void *a2)
{
  v3 = a1;
  v4 = _AXMCachedDateFormatterForFormat(a2);
  v5 = [v4 stringFromDate:v3];

  return v5;
}

id AXMFormatNumber(void *a1)
{
  v1 = AXMFormatNumber__AXNumberFormatterOnceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXMFormatNumber_cold_1();
  }

  v3 = [AXMFormatNumber__AXNumberFormatter stringFromNumber:v2];

  return v3;
}

void __AXMFormatNumber_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = AXMFormatNumber__AXNumberFormatter;
  AXMFormatNumber__AXNumberFormatter = v0;
}

id AXMFormatInteger(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v2 = AXMFormatNumber(v1);

  return v2;
}

double AXMClampDouble(double result, double a2, double a3)
{
  if (result >= a3)
  {
    result = a3;
  }

  if (result > a3)
  {
    return a3;
  }

  return result;
}

uint64_t _AXMTaskHasEntitlement(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2);
  v3 = v2;
  if (v2 && (v4 = CFGetTypeID(v2), v4 == CFBooleanGetTypeID()))
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t AXMSelfTaskHasEntitlement(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __AXMSelfTaskHasEntitlement_block_invoke;
  v5[3] = &unk_1E7A1EB78;
  v6 = v1;
  v2 = v1;
  HasEntitlement = _AXMTaskHasEntitlement(v2, v5);

  return HasEntitlement;
}

uint64_t AXMAuditTokenTaskHasEntitlement(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __AXMAuditTokenTaskHasEntitlement_block_invoke;
  v7[3] = &unk_1E7A1EBA0;
  v8 = v3;
  v9 = a1;
  v4 = v3;
  HasEntitlement = _AXMTaskHasEntitlement(v4, v7);

  return HasEntitlement;
}

id __AXMAuditTokenTaskHasEntitlement_block_invoke(uint64_t a1)
{
  v1 = AXMCopyValueForEntitlementFromAuditTokenTask(*(a1 + 40), *(a1 + 32));

  return v1;
}

uint64_t AXMCopyValueForEntitlementFromAuditTokenTask(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __AXMCopyValueForEntitlementFromAuditTokenTask_block_invoke;
  v3[3] = &__block_descriptor_40_e17_____SecTask__8__0l;
  v3[4] = a1;
  _AXMCopyValueForEntitlementUsingTaskCreationBlock(a2, v3);
  return objc_claimAutoreleasedReturnValue();
}

id _AXMCopyValueForEntitlementUsingTaskCreationBlock(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = (*(a2 + 16))(a2);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
    if (error)
    {
      v7 = AXMediaLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _AXMCopyValueForEntitlementUsingTaskCreationBlock_cold_1(&error, v7);
      }

      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _AXMCopyValueForEntitlementUsingTaskCreationBlock_cold_2(v3, v8);
    }

    v6 = 0;
  }

  return v6;
}

SecTaskRef __AXMCopyValueForEntitlementFromAuditTokenTask_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  *v4.val = *v1;
  *&v4.val[4] = v2;
  return SecTaskCreateWithAuditToken(0, &v4);
}

id sub_1AE42D7A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1AE44461C();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1AE4445FC();
      sub_1AE44462C();
      sub_1AE44463C();
      sub_1AE44460C();
      --v2;
    }

    while (v2);
  }

  sub_1AE43D708(0, &qword_1EB5DB0C0);
  v6 = sub_1AE4444DC();

  v7 = [v1 objectForKeyedSubscript_];

  return v7;
}

id AXBoundingBox.__allocating_init(id:timestamp:heat:angle:rect:classIndex:heatByClass:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5, float a6, double a7, double a8, double a9, double a10)
{
  v21 = objc_allocWithZone(v10);
  v22 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  sub_1AE4443CC();
  v23 = &v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat];
  *&v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat] = 0;
  v24 = &v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle];
  *&v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle] = 0;
  v25 = &v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth];
  *v25 = 0;
  v25[4] = 1;
  v26 = &v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d];
  *v26 = 0;
  *(v26 + 1) = 0;
  v26[16] = 1;
  *&v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints] = 0;
  v27 = &v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize];
  *v27 = 0;
  v27[8] = 1;
  swift_beginAccess();
  v28 = sub_1AE4443DC();
  v29 = *(v28 - 8);
  (*(v29 + 24))(&v21[v22], a1, v28);
  swift_endAccess();
  swift_beginAccess();
  *v23 = a5;
  swift_beginAccess();
  *v24 = a6;
  v30 = &v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
  *v30 = a7;
  v30[1] = a8;
  v30[2] = a9;
  v30[3] = a10;
  *&v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex] = a2;
  *&v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass] = a3;
  *&v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen] = a4;
  *&v21[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen] = a4;
  v33.receiver = v21;
  v33.super_class = v10;
  v31 = objc_msgSendSuper2(&v33, sel_init);
  (*(v29 + 8))(a1, v28);
  return v31;
}

id AXBoundingBox.init(id:timestamp:heat:angle:rect:classIndex:heatByClass:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5, float a6, double a7, double a8, double a9, double a10)
{
  v21 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  sub_1AE4443CC();
  v22 = &v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat];
  *&v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat] = 0;
  v23 = &v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle];
  *&v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle] = 0;
  v24 = &v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth];
  *v24 = 0;
  v24[4] = 1;
  v25 = &v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = 1;
  *&v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints] = 0;
  v26 = &v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize];
  *v26 = 0;
  v26[8] = 1;
  swift_beginAccess();
  v27 = sub_1AE4443DC();
  v28 = *(v27 - 8);
  (*(v28 + 24))(&v10[v21], a1, v27);
  swift_endAccess();
  swift_beginAccess();
  *v22 = a5;
  swift_beginAccess();
  *v23 = a6;
  v29 = &v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
  *v29 = a7;
  v29[1] = a8;
  v29[2] = a9;
  v29[3] = a10;
  *&v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex] = a2;
  *&v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass] = a3;
  *&v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen] = a4;
  *&v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen] = a4;
  v32.receiver = v10;
  v32.super_class = type metadata accessor for AXBoundingBox();
  v30 = objc_msgSendSuper2(&v32, sel_init);
  (*(v28 + 8))(a1, v27);
  return v30;
}

uint64_t type metadata accessor for AXBoundingBox()
{
  result = qword_1EB5DB220;
  if (!qword_1EB5DB220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AE42DD64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  swift_beginAccess();
  v5 = sub_1AE4443DC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1AE42DDF0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1AE4443DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1AE42DF08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  swift_beginAccess();
  v4 = sub_1AE4443DC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1AE42DF90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  swift_beginAccess();
  v4 = sub_1AE4443DC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

float sub_1AE42E080@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

uint64_t sub_1AE42E0D4(int *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
  result = swift_beginAccess();
  *v3 = v2;
  return result;
}

float sub_1AE42E12C()
{
  v1 = v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1AE42E174(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_1AE42E228@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

uint64_t sub_1AE42E27C(int *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle);
  result = swift_beginAccess();
  *v3 = v2;
  return result;
}

float sub_1AE42E2D4()
{
  v1 = v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1AE42E31C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

void sub_1AE42E3D0(void *a1@<X0>, CGFloat *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v3);
  MidY = CGRectGetMidY(*v3);
  *a2 = MidX;
  a2[1] = MidY;
}

float64x2_t sub_1AE42E444(float64x2_t *a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  __asm { FMOV            V2.2D, #-0.5 }

  result = vaddq_f64(*a1, vmulq_f64(v3[1], _Q2));
  *v3 = result;
  return result;
}

double sub_1AE42E4A8()
{
  v1 = (v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v1);
  CGRectGetMidY(*v1);
  return MidX;
}

float64x2_t sub_1AE42E518(float64_t a1, float64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  __asm { FMOV            V1.2D, #-0.5 }

  v9.f64[0] = a1;
  v9.f64[1] = a2;
  result = vaddq_f64(v9, vmulq_f64(v3[1], _Q1));
  *v3 = result;
  return result;
}

void (*sub_1AE42E57C(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v6);
  MidY = CGRectGetMidY(*v6);
  *(v4 + 24) = MidX;
  *(v4 + 32) = MidY;
  return sub_1AE42E634;
}

void sub_1AE42E634(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(v1 + 40) + *(v1 + 48));
  __asm { FMOV            V2.2D, #-0.5 }

  *v2 = vaddq_f64(*(v1 + 24), vmulq_f64(v2[1], _Q2));
  free(v1);
}

__n128 sub_1AE42E65C@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  result = v3[1];
  *a2 = result;
  return result;
}

uint64_t sub_1AE42E6B0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
  result = swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

double sub_1AE42E708()
{
  v1 = v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1AE42E750(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
  result = swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return result;
}

void (*sub_1AE42E7A8(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 24) = *(v6 + 16);
  return sub_1AE42E840;
}

void sub_1AE42E840(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 40) + *(v1 + 48) + 16) = *(v1 + 24);
  free(v1);
}

__n128 sub_1AE42E858@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_1AE42E8AC(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

double sub_1AE42E900()
{
  v1 = v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1AE42E94C(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_1AE42EA18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1AE42EA70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1AE42EAC4()
{
  v1 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1AE42EB08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1AE42EBB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1AE42EC14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1AE42ECC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1AE42ED7C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AE42EDD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_1AE42EE28()
{
  v1 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1AE42EE6C(double a1)
{
  v3 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1AE42EF1C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AE42EF74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_1AE42EFC8()
{
  v1 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1AE42F00C(double a1)
{
  v3 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1AE42F0BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1AE42F118(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

unint64_t sub_1AE42F178()
{
  v1 = (v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_1AE42F1D0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

__n128 sub_1AE42F284@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1AE42F2E0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_1AE42F340()
{
  v1 = v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1AE42F38C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1AE42F454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1AE42F4B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1AE42F560(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1AE42F618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1AE42F674(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1AE42F6D4()
{
  v1 = v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1AE42F720(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t Array<A>.argmax()(uint64_t a1)
{
  v5 = a1;
  v1 = sub_1AE44452C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FF0D0](&v4, v1, WitnessTable);
  sub_1AE44468C();
  swift_getWitnessTable();
  sub_1AE4444BC();

  return v5;
}

AXMediaUtilities::UIType_optional __swiftcall UIType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 14;
  if (rawValue < 0xE)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AXMediaUtilities::UITypeClickability_optional __swiftcall UITypeClickability.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t static AXBoundingBox.nonMaximalSuppression(boxes:maxBoxes:)(unint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  v4 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    do
    {

      v5 = v4;
      while (1)
      {
        if (v3 >> 62)
        {
          if (sub_1AE44469C() < 1)
          {
LABEL_33:

            return v5;
          }
        }

        else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_33;
        }

        v24 = sub_1AE436F64(v6);
        sub_1AE434B50(&v24);

        v25 = v24;
        v7 = sub_1AE42FCD0(0);
        MEMORY[0x1B26FF0F0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AE4444FC();
        }

        sub_1AE44451C();
        v8 = v25;
        v5 = v26;
        v24 = v4;
        v3 = v25 >> 62 ? sub_1AE44469C() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = &v7[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
        swift_beginAccess();
        v23 = v3;
        if (v3)
        {
          break;
        }

        v3 = v4;
LABEL_24:

        if (a3)
        {
        }

        else
        {
          if (v5 >> 62)
          {
            v18 = sub_1AE44469C();
          }

          else
          {
            v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v18 == a2)
          {

            return v5;
          }
        }
      }

      v22 = v7;
      v10 = 0;
      v11 = v3;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1B26FF200](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v3 = v12 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
        swift_beginAccess();
        if (CGRectIntersectsRect(*v3, *v9))
        {
          v27 = CGRectUnion(*v9, *v3);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;

          v9->origin.x = x;
          v9->origin.y = y;
          v9->size.width = width;
          v9->size.height = height;
        }

        else
        {
          sub_1AE4445FC();
          sub_1AE44462C();
          v11 = v23;
          sub_1AE44463C();
          v3 = &v24;
          sub_1AE44460C();
        }

        ++v10;
        if (v4 == v11)
        {
          v3 = v24;
          v4 = MEMORY[0x1E69E7CC0];
          v7 = v22;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    while (sub_1AE44469C() >= 1);
  }

  return v3;
}

uint64_t sub_1AE42FCD0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1AE434D0C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_1AE42FD64(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  x = v3->origin.x;
  y = v3->origin.y;
  width = v3->size.width;
  height = v3->size.height;
  v8 = (a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = CGRectUnion(v18, *v8);
  v9 = v19.origin.x;
  v10 = v19.origin.y;
  v11 = v19.size.width;
  v12 = v19.size.height;
  v13 = CGRectGetHeight(v19);
  v20.origin.x = v9;
  v20.origin.y = v10;
  v20.size.width = v11;
  v20.size.height = v12;
  if (sqrt(v13 * CGRectGetWidth(v20)) != 0.0)
  {
    v21 = CGRectIntersection(*v3, *v8);
    v14 = v21.origin.x;
    v15 = v21.origin.y;
    v16 = v21.size.width;
    v17 = v21.size.height;
    CGRectGetHeight(v21);
    v22.origin.x = v14;
    v22.origin.y = v15;
    v22.size.width = v16;
    v22.size.height = v17;
    CGRectGetWidth(v22);
  }
}

AXMediaUtilities::UIType_optional sub_1AE42FF04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  swift_beginAccess();
  result.value = UIType.init(rawValue:)(*(v0 + v2)).value;
  if (v26 == 14)
  {
    __break(1u);
  }

  else
  {
    sub_1AE4445BC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAF78);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AE452320;
    v5 = (v1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
    swift_beginAccess();
    v6 = *v5;
    v7 = MEMORY[0x1E69E64A8];
    *(v4 + 56) = MEMORY[0x1E69E6448];
    *(v4 + 64) = v7;
    *(v4 + 32) = v6;
    v8 = sub_1AE44447C();
    v10 = v9;

    MEMORY[0x1B26FF0C0](v8, v10);

    MEMORY[0x1B26FF0C0](0x3D7373616C6320, 0xE700000000000000);
    v11 = sub_1AE44448C();
    MEMORY[0x1B26FF0C0](v11);

    MEMORY[0x1B26FF0C0](0x3D72746320, 0xE500000000000000);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AE452330;
    v13 = v1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect;
    swift_beginAccess();
    MidX = CGRectGetMidX(*v13);
    CGRectGetMidY(*v13);
    v15 = MEMORY[0x1E69E7DE0];
    *(v12 + 56) = MEMORY[0x1E69E7DE0];
    v16 = sub_1AE438C48();
    *(v12 + 64) = v16;
    *(v12 + 32) = MidX;
    CGRectGetMidX(*v13);
    MidY = CGRectGetMidY(*v13);
    *(v12 + 96) = v15;
    *(v12 + 104) = v16;
    *(v12 + 72) = MidY;
    v18 = sub_1AE44447C();
    v20 = v19;

    MEMORY[0x1B26FF0C0](v18, v20);

    MEMORY[0x1B26FF0C0](0x3D657A697320, 0xE600000000000000);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AE452330;
    *(v21 + 56) = v15;
    *(v21 + 64) = v16;
    v22 = *(v13 + 24);
    *(v21 + 32) = *(v13 + 16);
    *(v21 + 96) = v15;
    *(v21 + 104) = v16;
    *(v21 + 72) = v22;
    v23 = sub_1AE44447C();
    v25 = v24;

    MEMORY[0x1B26FF0C0](v23, v25);

    MEMORY[0x1B26FF0C0](15904, 0xE200000000000000);
    return 60;
  }

  return result;
}

float64x2_t sub_1AE430290(float64_t a1, float64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  v4.f64[0] = a1;
  v4.f64[1] = a2;
  result = vmulq_f64(*v3, v4);
  v6 = vmulq_f64(v3[1], v4);
  *v3 = result;
  v3[1] = v6;
  return result;
}

void sub_1AE4302F0()
{
  v1 = (v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  x = v1->origin.x;
  y = v1->origin.y;
  v6.size.width = v1->size.width;
  v6.size.height = v1->size.height;
  v6.origin.x = v1->origin.x;
  v6.origin.y = y;
  Height = CGRectGetHeight(v6);
  Width = CGRectGetWidth(*v1);
  v1->origin.x = y;
  v1->origin.y = x;
  v1->size.width = Height;
  v1->size.height = Width;
}

float64x2_t sub_1AE430370()
{
  v1 = (v0 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  v2 = v1[1];
  v3 = v1[1].f64[1];
  if (v2.f64[0] > v3)
  {
    v3 = v1[1].f64[0];
  }

  __asm { FMOV            V3.2D, #-0.5 }

  result = vaddq_f64(*v1, vmulq_f64(vsubq_f64(vdupq_lane_s64(*&v3, 0), v2), _Q3));
  *v1 = result;
  v1[1].f64[0] = v3;
  v1[1].f64[1] = v3;
  return result;
}

uint64_t sub_1AE4303E0(CGFloat *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v73 = a1[5];
  v8 = sub_1AE4443DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[3];
  v74 = v12[2];
  v16 = v14 + v15;
  v77 = MEMORY[0x1E69E7CC0];
  sub_1AE434474(0, 4, 0);
  v17 = v77;
  v75 = v7;
  v76 = v3;
  v78.a = v3;
  v78.b = v4;
  v18 = v4;
  v19 = v5;
  v78.c = v5;
  v78.d = v6;
  v20 = v73;
  v78.tx = v7;
  v78.ty = v73;
  v79.x = v13;
  v79.y = v14;
  v23 = CGPointApplyAffineTransform(v79, &v78);
  y = v23.y;
  x = v23.x;
  v25 = *(v17 + 16);
  v24 = *(v17 + 24);
  if (v25 >= v24 >> 1)
  {
    v71 = v23.y;
    v72 = v23.x;
    sub_1AE434474((v24 > 1), v25 + 1, 1);
    y = v71;
    x = v72;
    v17 = v77;
  }

  v74 = v13 + v74;
  *(v17 + 16) = v25 + 1;
  v26 = v17 + 16 * v25;
  *(v26 + 32) = x;
  *(v26 + 40) = y;
  v78.a = v76;
  v78.b = v18;
  v78.c = v19;
  v78.d = v6;
  v78.tx = v75;
  v78.ty = v20;
  v80.x = v13;
  v80.y = v16;
  v29 = CGPointApplyAffineTransform(v80, &v78);
  v28 = v29.y;
  v27 = v29.x;
  v31 = *(v17 + 16);
  v30 = *(v17 + 24);
  v32 = v16;
  if (v31 >= v30 >> 1)
  {
    v72 = v29.x;
    sub_1AE434474((v30 > 1), v31 + 1, 1);
    v28 = v29.y;
    v32 = v16;
    v27 = v72;
    v17 = v77;
  }

  *(v17 + 16) = v31 + 1;
  v33 = v17 + 16 * v31;
  *(v33 + 32) = v27;
  *(v33 + 40) = v28;
  v34 = v76;
  v78.a = v76;
  v78.b = v18;
  v35 = v18;
  v78.c = v19;
  v78.d = v6;
  v81.x = v74;
  v36 = v75;
  v78.tx = v75;
  v78.ty = v20;
  v81.y = v14;
  v39 = CGPointApplyAffineTransform(v81, &v78);
  v38 = v39.y;
  v37 = v39.x;
  v41 = *(v17 + 16);
  v40 = *(v17 + 24);
  v42 = v41 + 1;
  if (v41 >= v40 >> 1)
  {
    v72 = v32;
    sub_1AE434474((v40 > 1), v41 + 1, 1);
    v38 = v39.y;
    v32 = v72;
    v37 = v39.x;
  }

  v43 = v77;
  *(v77 + 16) = v42;
  v44 = v43 + 16 * v41;
  *(v44 + 32) = v37;
  *(v44 + 40) = v38;
  v78.a = v34;
  v78.b = v35;
  v78.c = v19;
  v78.d = v6;
  v78.tx = v36;
  v78.ty = v20;
  v82.x = v74;
  v82.y = v32;
  v47 = CGPointApplyAffineTransform(v82, &v78);
  v46 = v47.y;
  v45 = v47.x;
  v48 = *(v43 + 24);
  v49 = v41 + 2;
  if (v42 >= v48 >> 1)
  {
    sub_1AE434474((v48 > 1), v49, 1);
    v46 = v47.y;
    v45 = v47.x;
    v43 = v77;
  }

  *(v43 + 16) = v49;
  v50 = v43 + 16 * v42;
  *(v50 + 32) = v45;
  *(v50 + 40) = v46;
  v51 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen;
  swift_beginAccess();
  v52 = _s16AXMediaUtilities13AXBoundingBoxC9timestamp10containing4heatACSd_SaySo7CGPointVGSftcfC_0(v43, *(v2 + v51), 0.0);
  v53 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v53, v8);
  v54 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  swift_beginAccess();
  (*(v9 + 40))(v52 + v54, v11, v8);
  swift_endAccess();
  v55 = (v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
  swift_beginAccess();
  v56 = *v55;
  v57 = (v52 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
  swift_beginAccess();
  *v57 = v56;
  v58 = (v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle);
  swift_beginAccess();
  v59 = *v58;
  v60 = (v52 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle);
  swift_beginAccess();
  *v60 = v59;
  v61 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  swift_beginAccess();
  v62 = *(v2 + v61);
  v63 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  swift_beginAccess();
  *(v52 + v63) = v62;
  v64 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass;
  swift_beginAccess();
  v65 = *(v2 + v64);
  v66 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass;
  swift_beginAccess();
  *(v52 + v66) = v65;

  v67 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen;
  swift_beginAccess();
  v68 = *(v2 + v67);
  v69 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen;
  swift_beginAccess();
  *(v52 + v69) = v68;
  return v52;
}

uint64_t sub_1AE4308FC(uint64_t a1, float a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v4);
  CGRectGetMidY(*v4);
  v6 = (a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  v7 = CGRectGetMidX(*v6);
  CGRectGetMidY(*v6);
  v57 = 1.0 - a2;
  v8 = (1.0 - a2);
  v9 = MidX * v8 + v7 * a2;
  CGRectGetMidX(*v4);
  MidY = CGRectGetMidY(*v4);
  CGRectGetMidX(*v6);
  v11 = MidY * v8 + CGRectGetMidY(*v6) * a2;
  v12 = v4->size.width * v8 + v6->size.width * a2;
  v13 = v4->size.height * v8 + v6->size.height * a2;
  v14 = (v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle);
  swift_beginAccess();
  v15 = *v14;
  v16 = (a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle);
  swift_beginAccess();
  v17 = ((1.0 - a2) * v15) + (*v16 * a2);
  v4->origin.x = v9 - v12 * 0.5;
  v4->origin.y = v11 - v13 * 0.5;
  v4->size.width = v12;
  v4->size.height = v13;
  *v14 = v17;
  v18 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass;
  swift_beginAccess();
  v19 = *(*(a1 + v18) + 16);
  v20 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v19 == *(v21 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v59 = MEMORY[0x1E69E7CC0];

      v56 = v2;
      result = sub_1AE434454(0, v19, 0);
      v22 = v59;
      v24 = *(v21 + 16);
      v25 = 8;
      v27 = 1.0 - a2;
      v26 = a2;
      while (v24)
      {
        if ((v25 - 8) >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v28 = *(a1 + v18);
        if ((v25 - 8) >= *(v28 + 16))
        {
          goto LABEL_36;
        }

        v29 = *(v21 + 4 * v25);
        v30 = *(v28 + 4 * v25);
        v32 = *(v59 + 16);
        v31 = *(v59 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_1AE434454((v31 > 1), v32 + 1, 1);
          v27 = 1.0 - a2;
          v26 = a2;
          v2 = v56;
        }

        *(v59 + 16) = v32 + 1;
        *(v59 + 4 * v32 + 32) = (v27 * v29) + (v30 * v26);
        --v24;
        ++v25;
        if (!--v19)
        {

          goto LABEL_11;
        }
      }

      goto LABEL_34;
    }

LABEL_11:
    *(v2 + v20) = v22;

    v33 = *(v2 + v20);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = 0;
      v36 = 0;
      while (v35 < v34)
      {
        if (*(v33 + 32 + 4 * v35) < *(v33 + 32 + 4 * v36))
        {
          v35 = v36;
        }

        if (v34 == ++v36)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v35 = 0;
LABEL_19:
    v37 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
    result = swift_beginAccess();
    *(v2 + v37) = v35;
    if (v35 >= *(v33 + 16))
    {
LABEL_37:
      __break(1u);
      return result;
    }

    v38 = *(v33 + 4 * v35 + 32);
    v39 = (v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
    swift_beginAccess();
    *v39 = v38;
  }

  v40 = a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth;
  swift_beginAccess();
  if ((*(v40 + 4) & 1) == 0)
  {
    v41 = *v40;
    v42 = v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth;
    swift_beginAccess();
    if (*(v42 + 4))
    {
      v43 = v41;
    }

    else
    {
      v43 = (v41 * a2) + (v57 * *v42);
    }

    *v42 = v43;
    *(v42 + 4) = 0;
  }

  v44 = (a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize);
  swift_beginAccess();
  if ((v44[1].i8[0] & 1) == 0)
  {
    v45 = *v44;
    v46 = (v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize);
    swift_beginAccess();
    if ((v46[1].i8[0] & 1) == 0)
    {
      *v46 = vadd_f32(vmul_n_f32(v45, a2), vmul_n_f32(*v46, v57));
      v46[1].i8[0] = 0;
    }
  }

  v47 = a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d;
  swift_beginAccess();
  if ((*(v47 + 16) & 1) == 0)
  {
    v48 = *v47;
    v49 = *(v47 + 8);
    v50 = v2 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d;
    swift_beginAccess();
    if ((*(v50 + 16) & 1) == 0)
    {
      v51 = vmul_f32(__PAIR64__(LODWORD(v57), LODWORD(a2)), vzip1_s32(v49, *(v50 + 8)));
      *&v52 = vadd_f32(vmul_n_f32(v48, a2), vmul_n_f32(*v50, v57));
      *(&v52 + 1) = vadd_f32(v51, vdup_lane_s32(v51, 1)).u32[0];
      *v50 = v52;
      *(v50 + 16) = 0;
    }
  }

  v53 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen;
  swift_beginAccess();
  v54 = *(a1 + v53);
  v55 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen;
  result = swift_beginAccess();
  *(v2 + v55) = v54;
  return result;
}

uint64_t BinaryFloatingPoint.ema<A>(to:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a2;
  v37 = a5;
  v38 = a6;
  v34 = a1;
  v35 = a7;
  v32 = *(*(*(a6 + 16) + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - v16;
  v18 = *(a3 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v31 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v30 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v36 = &v30 - v24;
  swift_getAssociatedConformanceWitness();
  sub_1AE4447FC();
  sub_1AE4447DC();
  v25 = v33;
  sub_1AE44467C();
  (*(v11 + 8))(v14, a4);
  sub_1AE44442C();
  sub_1AE44456C();
  v26 = *(v18 + 8);
  v26(v23, a3);
  (*(v11 + 16))(v17, v25, a4);
  v27 = v31;
  sub_1AE44442C();
  sub_1AE44456C();
  v26(v27, a3);
  v28 = v36;
  sub_1AE44466C();
  v26(v23, a3);
  return (v26)(v28, a3);
}

uint64_t AXMElementDetectorResult.__allocating_init(boundingBox:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1AE439020(a1);

  return v4;
}

uint64_t AXMClickabilityDetectorResult.__allocating_init(boundingBox:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1AE43A424(a1);

  return v4;
}

id sub_1AE431320(float a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(float), void (*a7)(uint64_t))
{
  sub_1AE43D708(0, &qword_1EB5DB0C0);
  sub_1AE4444EC();
  v11 = a4;
  a6(a1);

  a7(v12);
  v13 = sub_1AE4444DC();

  return v13;
}

id AXBoundingBox.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1AE431478(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x64696F72746E6563;
    v7 = 0xD000000000000012;
    if (a1 != 10)
    {
      v7 = 0x6C61636973796870;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6565537473726966;
    v9 = 0x6E6565537473616CLL;
    if (a1 != 7)
    {
      v9 = 0x6874706564;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1952671090;
    v3 = 0x646E497373616C63;
    if (a1 != 4)
    {
      v3 = 0x6C43794274616568;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1952540008;
    if (a1 != 1)
    {
      v4 = 0x656C676E61;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1AE431640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AE43D170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AE431680(uint64_t a1)
{
  v2 = sub_1AE43B314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AE4316BC(uint64_t a1)
{
  v2 = sub_1AE43B314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AE4317A0(void *a1)
{
  v2 = v1;
  v34 = sub_1AE4443DC();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAF88);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE43B314();
  sub_1AE44488C();
  v10 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v33 = v2;
  v12 = v2 + v10;
  v13 = v34;
  v11(v6, v12, v34);
  LOBYTE(v47) = 0;
  sub_1AE43B37C(&qword_1EB5DAF90, MEMORY[0x1E69695A8]);
  v14 = v9;
  v15 = v49;
  sub_1AE4447AC();
  if (v15)
  {
    (*(v4 + 8))(v6, v13);
    return (*(v35 + 8))(v9, v7);
  }

  else
  {
    v17 = v35;
    (*(v4 + 8))(v6, v13);
    v18 = v33;
    swift_beginAccess();
    LOBYTE(v47) = 1;
    sub_1AE44478C();
    swift_beginAccess();
    LOBYTE(v47) = 2;
    sub_1AE44478C();
    v19 = (v18 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
    swift_beginAccess();
    v20 = v19[1];
    v47 = *v19;
    v48 = v20;
    v46 = 3;
    type metadata accessor for CGRect(0);
    sub_1AE43B37C(&qword_1EB5DAF98, type metadata accessor for CGRect);
    sub_1AE4447AC();
    swift_beginAccess();
    v46 = 4;
    sub_1AE44479C();
    v21 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass;
    swift_beginAccess();
    v22 = *(v33 + v21);
    v23 = v33;
    v45 = v22;
    v44 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFA0);
    sub_1AE43B458(&qword_1EB5DAFA8);
    sub_1AE4447AC();
    swift_beginAccess();
    v44 = 6;
    sub_1AE44477C();
    swift_beginAccess();
    v43 = 7;
    sub_1AE44477C();
    v24 = v23 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth;
    swift_beginAccess();
    v25 = *(v24 + 4);
    v42 = 8;
    LOBYTE(v40) = v25;
    sub_1AE44474C();
    v26 = (v23 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d);
    swift_beginAccess();
    v27 = *(v26 + 16);
    v40 = *v26;
    v41 = v27;
    LOBYTE(v39) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFB0);
    sub_1AE43D6C0(&qword_1EB5DAFB8, &qword_1EB5DAFB0);
    sub_1AE44475C();
    v28 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints;
    v29 = v33;
    swift_beginAccess();
    v39 = *(v29 + v28);
    LOBYTE(v37) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFC0);
    sub_1AE43B4C4(&qword_1EB5DAFC8, &qword_1EB5DAFB8);
    sub_1AE44475C();
    v30 = (v33 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize);
    swift_beginAccess();
    v31 = *(v30 + 8);
    v37 = *v30;
    v38 = v31;
    v36 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFD0);
    sub_1AE43D6C0(&qword_1EB5DAFD8, &qword_1EB5DAFD0);
    sub_1AE44475C();
    return (*(v17 + 8))(v14, 0);
  }
}

char *AXBoundingBox.init(from:)(void *a1)
{
  v50 = sub_1AE4443DC();
  v54 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFE0);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v41 - v4;
  v53 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  sub_1AE4443CC();
  v44 = &v1[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat];
  *&v1[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat] = 0;
  v6 = &v1[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle];
  *&v1[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle] = 0;
  v7 = &v1[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth];
  *v7 = 0;
  v7[4] = 1;
  v8 = &v1[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v52 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints;
  *&v1[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints] = 0;
  v55 = v1;
  v9 = &v1[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize];
  *v9 = 0;
  v9[8] = 1;
  v10 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1AE43B314();
  v48 = v5;
  v11 = v49;
  sub_1AE44487C();
  if (v11)
  {
    v12 = v50;
    v15 = v54;
    v16 = v53;
    v17 = v55;
    __swift_destroy_boxed_opaque_existential_1(v51);
    (*(v15 + 8))(&v17[v16], v12);

    type metadata accessor for AXBoundingBox();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v49 = v6;
    v43 = v7;
    v42 = v8;
    LOBYTE(v64) = 0;
    sub_1AE43B37C(&qword_1EB5DAFE8, MEMORY[0x1E69695A8]);
    v13 = v45;
    v14 = v50;
    sub_1AE44473C();
    v19 = v53;
    v20 = v55;
    swift_beginAccess();
    (*(v54 + 40))(&v20[v19], v13, v14);
    swift_endAccess();
    LOBYTE(v64) = 1;
    sub_1AE44471C();
    v22 = v21;
    v23 = v44;
    swift_beginAccess();
    *v23 = v22;
    LOBYTE(v64) = 2;
    sub_1AE44471C();
    v25 = v24;
    v26 = v49;
    swift_beginAccess();
    *v26 = v25;
    type metadata accessor for CGRect(0);
    v63 = 3;
    sub_1AE43B37C(&qword_1EB5DAFF0, type metadata accessor for CGRect);
    sub_1AE44473C();
    v27 = &v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
    v28 = v65;
    *v27 = v64;
    *(v27 + 1) = v28;
    LOBYTE(v64) = 4;
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex] = sub_1AE44472C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFA0);
    v63 = 5;
    sub_1AE43B458(&qword_1EB5DAFF8);
    sub_1AE44473C();
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass] = v64;
    LOBYTE(v64) = 6;
    sub_1AE44470C();
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen] = v29;
    LOBYTE(v64) = 7;
    sub_1AE44470C();
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen] = v30;
    LOBYTE(v64) = 8;
    v31 = sub_1AE4446DC();
    v32 = v43;
    swift_beginAccess();
    *v32 = v31;
    v32[4] = BYTE4(v31) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFB0);
    v63 = 9;
    sub_1AE43D6C0(&qword_1EB5DB000, &qword_1EB5DAFB0);
    sub_1AE4446EC();
    v33 = v60;
    v34 = v61;
    LOBYTE(v32) = v62;
    v35 = v42;
    swift_beginAccess();
    *v35 = v33;
    *(v35 + 1) = v34;
    v35[16] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFC0);
    LOBYTE(v60) = 10;
    sub_1AE43B4C4(&qword_1EB5DB008, &qword_1EB5DB000);
    sub_1AE4446EC();
    v36 = v57;
    v37 = v52;
    v38 = v55;
    swift_beginAccess();
    *&v38[v37] = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DAFD0);
    LOBYTE(v57) = 11;
    sub_1AE43D6C0(&qword_1EB5DB010, &qword_1EB5DAFD0);
    sub_1AE4446EC();
    v39 = v58;
    LOBYTE(v34) = v59;
    swift_beginAccess();
    *v9 = v39;
    v9[8] = v34;
    v40 = type metadata accessor for AXBoundingBox();
    v56.receiver = v55;
    v56.super_class = v40;
    v17 = objc_msgSendSuper2(&v56, sel_init);
    (*(v46 + 8))(v48, v47);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return v17;
}

uint64_t sub_1AE4329C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
  swift_beginAccess();
  v5 = sub_1AE4443DC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1AE432AB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v25 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v24 - v9;
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v17 = *a1;
  (*(v18 + 16))(v10, a2, TupleTypeMetadata2);
  v19 = *v10;
  (*(v11 + 32))(v16, &v10[*(TupleTypeMetadata2 + 48)], a3);
  sub_1AE44453C();
  v20 = sub_1AE44444C();
  v21 = *(v11 + 8);
  v21(v14, a3);
  result = (v21)(v16, a3);
  if (v20)
  {
    v23 = v19;
  }

  else
  {
    v23 = v17;
  }

  *v25 = v23;
  return result;
}

uint64_t BinaryFloatingPoint.clip(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE44480C();
  sub_1AE44445C();
  sub_1AE44481C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t BinaryFloatingPoint.lerp(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = a2;
  v16[1] = a4;
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v16 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  sub_1AE44467C();
  sub_1AE44445C();
  sub_1AE44467C();
  sub_1AE44443C();
  v14 = *(v5 + 8);
  v14(v8, a3);
  v14(v11, a3);
  sub_1AE44467C();
  sub_1AE44456C();
  v14(v8, a3);
  sub_1AE44466C();
  v14(v11, a3);
  return (v14)(v13, a3);
}

uint64_t BinaryFloatingPoint.clerp(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BinaryFloatingPoint.lerp(from:to:)(v6, v9, v10, v8);
  BinaryFloatingPoint.clip(to:)(a2, a3);
  return (*(v5 + 8))(v8, a3);
}

uint64_t AXMElementDetectorResult.init(boundingBox:)(void *a1)
{
  v2 = sub_1AE439020(a1);

  return v2;
}

uint64_t sub_1AE4331D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_labelName);

  return v1;
}

uint64_t sub_1AE43329C()
{
  v1 = 7892834;
  v2 = 0x6D614E6C6562616CLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    v1 = 0x6C6562616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AE433314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AE43D54C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AE433348(uint64_t a1)
{
  v2 = sub_1AE43B580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AE433384(uint64_t a1)
{
  v2 = sub_1AE43B580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AE4333EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB038);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE43B580();
  sub_1AE44488C();
  v9 = *(v3 + OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box + 16);
  v12 = *(v3 + OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box);
  v13 = v9;
  v11[15] = 0;
  type metadata accessor for CGRect(0);
  sub_1AE43B37C(&qword_1EB5DAF98, type metadata accessor for CGRect);
  sub_1AE4447AC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12) = 1;
  sub_1AE44479C();
  LOBYTE(v12) = 2;
  sub_1AE44476C();
  LOBYTE(v12) = 3;
  sub_1AE44477C();
  return (*(v6 + 8))(v8, v5);
}

id AXMElementDetectorResult.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB040);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE43B580();
  sub_1AE44487C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for AXMElementDetectorResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_1AE43B37C(&qword_1EB5DAFF0, type metadata accessor for CGRect);
    sub_1AE44473C();
    v9 = &v1[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box];
    v10 = v19;
    *v9 = v18;
    *(v9 + 1) = v10;
    LOBYTE(v18) = 1;
    *&v1[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_label] = sub_1AE44472C();
    LOBYTE(v18) = 2;
    v11 = sub_1AE4446FC();
    v13 = &v1[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_labelName];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v18) = 3;
    sub_1AE44470C();
    *&v1[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_confidence] = v15;
    v16 = type metadata accessor for AXMElementDetectorResult();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1AE433940@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXMElementDetectorResult();
  result = sub_1AE4445CC();
  *a1 = result;
  return result;
}

uint64_t AXMClickabilityDetectorResult.init(boundingBox:)(void *a1)
{
  v2 = sub_1AE43A424(a1);

  return v2;
}

uint64_t sub_1AE433A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_labelName);

  return v1;
}

id sub_1AE433AAC()
{

  v0 = sub_1AE44446C();

  return v0;
}

uint64_t sub_1AE433B88()
{
  v1 = *v0;
  sub_1AE44484C();
  MEMORY[0x1B26FF480](v1);
  return sub_1AE44486C();
}

uint64_t sub_1AE433BD0()
{
  v1 = *v0;
  sub_1AE44484C();
  MEMORY[0x1B26FF480](v1);
  return sub_1AE44486C();
}

uint64_t sub_1AE433C14(uint64_t a1)
{
  v2 = sub_1AE43B5F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AE433C50(uint64_t a1)
{
  v2 = sub_1AE43B5F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1AE433CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1AE433CF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE43B5F8();
  sub_1AE44488C();
  v9 = *(v3 + OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box + 16);
  v12 = *(v3 + OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box);
  v13 = v9;
  v11[15] = 0;
  type metadata accessor for CGRect(0);
  sub_1AE43B37C(&qword_1EB5DAF98, type metadata accessor for CGRect);
  sub_1AE4447AC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12) = 1;
  sub_1AE44479C();
  LOBYTE(v12) = 2;
  sub_1AE44476C();
  LOBYTE(v12) = 3;
  sub_1AE44477C();
  return (*(v6 + 8))(v8, v5);
}

id AXMClickabilityDetectorResult.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB070);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE43B5F8();
  sub_1AE44487C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for AXMClickabilityDetectorResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_1AE43B37C(&qword_1EB5DAFF0, type metadata accessor for CGRect);
    sub_1AE44473C();
    v9 = &v1[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box];
    v10 = v19;
    *v9 = v18;
    *(v9 + 1) = v10;
    LOBYTE(v18) = 1;
    *&v1[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_label] = sub_1AE44472C();
    LOBYTE(v18) = 2;
    v11 = sub_1AE4446FC();
    v13 = &v1[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_labelName];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v18) = 3;
    sub_1AE44470C();
    *&v1[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_confidence] = v15;
    v16 = type metadata accessor for AXMClickabilityDetectorResult();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1AE434244@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXMClickabilityDetectorResult();
  result = sub_1AE4445CC();
  *a1 = result;
  return result;
}

uint64_t sub_1AE4342C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v9 = objc_allocWithZone(a3(a2));
  result = a4(a1);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t AXModelType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1AE434374()
{
  v1 = *v0;
  sub_1AE44484C();
  MEMORY[0x1B26FF480](v1);
  return sub_1AE44486C();
}

uint64_t sub_1AE4343E8()
{
  v1 = *v0;
  sub_1AE44484C();
  MEMORY[0x1B26FF480](v1);
  return sub_1AE44486C();
}

uint64_t *sub_1AE43442C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

char *sub_1AE434454(char *a1, int64_t a2, char a3)
{
  result = sub_1AE4344F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AE434474(char *a1, int64_t a2, char a3)
{
  result = sub_1AE4345F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AE434494(char *a1, int64_t a2, char a3)
{
  result = sub_1AE4346FC(a1, a2, a3, *v3, &qword_1EB5DB178);
  *v3 = result;
  return result;
}

char *sub_1AE4344C4(char *a1, int64_t a2, char a3)
{
  result = sub_1AE4346FC(a1, a2, a3, *v3, &qword_1EB5DB130);
  *v3 = result;
  return result;
}

char *sub_1AE4344F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1AE4345F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1AE4346FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

unint64_t sub_1AE4347E8(unsigned __int8 a1)
{
  sub_1AE44484C();
  MEMORY[0x1B26FF480](a1);
  v2 = sub_1AE44486C();
  return sub_1AE434AE0(a1, v2);
}

char *sub_1AE434850(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1AE434954(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1AE434A58(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB1A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_1AE434AE0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AE434B50(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AE43719C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v22 = v2 + 32;
  v25[0] = v2 + 32;
  v25[1] = v4;
  v5 = sub_1AE4447CC();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v22 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          v16 = (v12 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
          swift_beginAccess();
          v17 = *v16;
          v18 = (v15 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
          swift_beginAccess();
          if (*v18 >= v17)
          {
            break;
          }

          v19 = *v14;
          v12 = v14[1];
          *v14 = v12;
          v14[1] = v19;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for AXBoundingBox();
      v8 = sub_1AE44450C();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v24[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v7;
    sub_1AE434D70(v24, v23, v25, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1AE44460C();
}

uint64_t sub_1AE434D0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1AE44469C();
  }

  return sub_1AE4445EC();
}

uint64_t sub_1AE434D70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v113 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v10 = 8 * v6;
        v11 = (*a3 + 8 * v6);
        v13 = *v11;
        v12 = v11 + 2;
        v14 = (*(*a3 + 8 * v9) + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
        swift_beginAccess();
        v15 = *v14;
        v4 = v13 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat;
        result = swift_beginAccess();
        v16 = *v4;
        v17 = v8 + 2;
        while (v5 != v17)
        {
          v18 = *(v12 - 1);
          v19 = (*v12 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
          swift_beginAccess();
          v20 = *v19;
          v4 = v18 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat;
          result = swift_beginAccess();
          ++v17;
          ++v12;
          if (v16 < v15 == *v4 >= v20)
          {
            v5 = v17 - 1;
            break;
          }
        }

        if (v16 < v15)
        {
          if (v5 < v8)
          {
            goto LABEL_153;
          }

          if (v8 < v5)
          {
            v21 = 8 * v5 - 8;
            v22 = v5;
            v23 = v8;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_159;
                }

                v25 = *(v24 + v10);
                *(v24 + v10) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 8;
              v10 += 8;
            }

            while (v23 < v22);
          }
        }

        v9 = v5;
      }

      v26 = a3[1];
      if (v9 < v26)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_152;
        }

        if (v9 - v8 < a4)
        {
          v27 = (v8 + a4);
          if (__OFADD__(v8, a4))
          {
            goto LABEL_154;
          }

          if (v27 >= v26)
          {
            v27 = a3[1];
          }

          if (v27 < v8)
          {
            goto LABEL_155;
          }

          if (v9 != v27)
          {
            v122 = v7;
            v28 = *a3;
            v29 = *a3 + 8 * v9 - 8;
            v30 = v8 - v9;
            __src = v27;
            do
            {
              v31 = v9;
              v32 = *(v28 + 8 * v9);
              v33 = v30;
              v7 = v29;
              do
              {
                v34 = *v7;
                v35 = (v32 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
                swift_beginAccess();
                v36 = *v35;
                v4 = v34 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat;
                swift_beginAccess();
                if (*v4 >= v36)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_156;
                }

                v37 = *v7;
                v32 = *(v7 + 1);
                *v7 = v32;
                *(v7 + 1) = v37;
                v7 -= 8;
              }

              while (!__CFADD__(v33++, 1));
              v9 = v31 + 1;
              v29 += 8;
              --v30;
            }

            while ((v31 + 1) != __src);
            v9 = __src;
            v7 = v122;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_149;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v115 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1AE434850(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v40 = *(v7 + 2);
      v39 = *(v7 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = sub_1AE434850((v39 > 1), v40 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v41;
      v42 = &v7[16 * v40];
      *(v42 + 4) = v8;
      *(v42 + 5) = v9;
      v43 = *v113;
      if (!*v113)
      {
        goto LABEL_160;
      }

      if (v40)
      {
        break;
      }

LABEL_3:
      v5 = a3[1];
      v6 = v115;
      if (v115 >= v5)
      {
        goto LABEL_124;
      }
    }

    __srca = *v113;
    while (1)
    {
      v44 = v41 - 1;
      if (v41 >= 4)
      {
        break;
      }

      if (v41 == 3)
      {
        v45 = *(v7 + 4);
        v46 = *(v7 + 5);
        v55 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        v48 = v55;
LABEL_56:
        if (v48)
        {
          goto LABEL_140;
        }

        v61 = &v7[16 * v41];
        v63 = *v61;
        v62 = *(v61 + 1);
        v64 = __OFSUB__(v62, v63);
        v65 = v62 - v63;
        v66 = v64;
        if (v64)
        {
          goto LABEL_143;
        }

        v67 = &v7[16 * v44 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_146;
        }

        if (__OFADD__(v65, v70))
        {
          goto LABEL_147;
        }

        if (v65 + v70 >= v47)
        {
          if (v47 < v70)
          {
            v44 = v41 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_70;
      }

      v71 = &v7[16 * v41];
      v73 = *v71;
      v72 = *(v71 + 1);
      v55 = __OFSUB__(v72, v73);
      v65 = v72 - v73;
      v66 = v55;
LABEL_70:
      if (v66)
      {
        goto LABEL_142;
      }

      v74 = &v7[16 * v44];
      v76 = *(v74 + 4);
      v75 = *(v74 + 5);
      v55 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v55)
      {
        goto LABEL_145;
      }

      if (v77 < v65)
      {
        goto LABEL_3;
      }

LABEL_77:
      if (v44 - 1 >= v41)
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v82 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        return result;
      }

      v118 = v44 - 1;
      v119 = v44;
      v83 = *&v7[16 * v44 + 32];
      v84 = *&v7[16 * v44 + 40];
      v121 = *&v7[16 * v44 + 16];
      v123 = v7;
      v85 = (v82 + 8 * v121);
      v86 = 8 * v83;
      v7 = (v82 + 8 * v83);
      v120 = v84;
      v87 = 8 * v84;
      v88 = (v82 + 8 * v84);
      v4 = 8 * v83 - 8 * v121;
      v89 = 8 * v84 - 8 * v83;
      if (v4 >= v89)
      {
        if (v7 != v43 || v88 <= v43)
        {
          memmove(v43, (v82 + 8 * v83), 8 * v84 - 8 * v83);
        }

        v90 = &v43[v89];
        if (v89 < 1 || v86 <= 8 * v121)
        {
          v91 = __srca;
          v105 = v7;
        }

        else
        {
          do
          {
            __dst = v7;
            v97 = v7 - 8;
            v88 -= 8;
            v98 = v90;
            while (1)
            {
              v99 = v88 + 8;
              v100 = *(v98 - 1);
              v98 -= 8;
              v7 = v97;
              v101 = *v97;
              v4 = &unk_1EB5DC000;
              v102 = (v100 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
              swift_beginAccess();
              v103 = *v102;
              v104 = (v101 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
              swift_beginAccess();
              if (*v104 < v103)
              {
                break;
              }

              if (v99 != v90)
              {
                *v88 = *v98;
              }

              v88 -= 8;
              v90 = v98;
              v97 = v7;
              if (v98 <= __srca)
              {
                v90 = v98;
                v91 = __srca;
                v105 = __dst;
                goto LABEL_114;
              }
            }

            v105 = v7;
            if (v99 != __dst)
            {
              *v88 = *v7;
            }

            v91 = __srca;
          }

          while (v90 > __srca && v85 < v7);
        }
      }

      else
      {
        if (v85 != v43 || v7 <= v43)
        {
          memmove(v43, (v82 + 8 * v121), 8 * v83 - 8 * v121);
        }

        v90 = &v43[v4];
        if (v4 >= 1 && v87 > v86)
        {
          v91 = __srca;
          while (1)
          {
            v92 = *v91;
            v93 = (*v7 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
            swift_beginAccess();
            v94 = *v93;
            v4 = v92 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat;
            swift_beginAccess();
            if (*v4 >= v94)
            {
              break;
            }

            v95 = v7;
            v96 = v85 == v7;
            v7 += 8;
            if (!v96)
            {
              goto LABEL_91;
            }

LABEL_92:
            v85 += 8;
            if (v91 >= v90 || v7 >= v88)
            {
              goto LABEL_111;
            }
          }

          v95 = v91;
          v96 = v85 == v91;
          v91 += 8;
          if (v96)
          {
            goto LABEL_92;
          }

LABEL_91:
          *v85 = *v95;
          goto LABEL_92;
        }

        v91 = __srca;
LABEL_111:
        v105 = v85;
      }

LABEL_114:
      if (v105 != v91 || v105 >= &v91[(v90 - v91 + (v90 - v91 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v105, v91, 8 * ((v90 - v91) / 8));
      }

      v106 = v123;
      v43 = __srca;
      if (v120 < v121)
      {
        goto LABEL_136;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_1AE4359B0(v123);
      }

      if (v119 > *(v106 + 2))
      {
        goto LABEL_137;
      }

      v107 = &v106[16 * v118];
      *(v107 + 4) = v121;
      *(v107 + 5) = v120;
      result = sub_1AE435924(v119);
      v7 = v106;
      v41 = *(v106 + 2);
      if (v41 <= 1)
      {
        goto LABEL_3;
      }
    }

    v49 = &v7[16 * v41 + 32];
    v50 = *(v49 - 64);
    v51 = *(v49 - 56);
    v55 = __OFSUB__(v51, v50);
    v52 = v51 - v50;
    if (v55)
    {
      goto LABEL_138;
    }

    v54 = *(v49 - 48);
    v53 = *(v49 - 40);
    v55 = __OFSUB__(v53, v54);
    v47 = v53 - v54;
    v48 = v55;
    if (v55)
    {
      goto LABEL_139;
    }

    v56 = &v7[16 * v41];
    v58 = *v56;
    v57 = *(v56 + 1);
    v55 = __OFSUB__(v57, v58);
    v59 = v57 - v58;
    if (v55)
    {
      goto LABEL_141;
    }

    v55 = __OFADD__(v47, v59);
    v60 = v47 + v59;
    if (v55)
    {
      goto LABEL_144;
    }

    if (v60 >= v52)
    {
      v78 = &v7[16 * v44 + 32];
      v80 = *v78;
      v79 = *(v78 + 1);
      v55 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v55)
      {
        goto LABEL_148;
      }

      if (v47 < v81)
      {
        v44 = v41 - 2;
      }

      goto LABEL_77;
    }

    goto LABEL_56;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_124:
  v4 = *v113;
  if (!*v113)
  {
    goto LABEL_162;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_157:
    result = sub_1AE4359B0(v7);
    v7 = result;
  }

  v108 = *(v7 + 2);
  if (v108 >= 2)
  {
    while (*a3)
    {
      v109 = *&v7[16 * v108];
      v110 = *&v7[16 * v108 + 24];
      sub_1AE43563C((*a3 + 8 * v109), (*a3 + 8 * *&v7[16 * v108 + 16]), (*a3 + 8 * v110), v4);
      if (v114)
      {
      }

      if (v110 < v109)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AE4359B0(v7);
      }

      if (v108 - 2 >= *(v7 + 2))
      {
        goto LABEL_151;
      }

      v111 = &v7[16 * v108];
      *v111 = v109;
      *(v111 + 1) = v110;
      result = sub_1AE435924(v108 - 1);
      v108 = *(v7 + 2);
      if (v108 <= 1)
      {
      }
    }

    goto LABEL_161;
  }
}

uint64_t sub_1AE43563C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      v22 = a3;
      memmove(a4, __src, 8 * v12);
      a3 = v22;
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v5 > v6)
    {
      v36 = v6;
LABEL_26:
      v23 = v5 - 8;
      v24 = a3 - 8;
      v25 = v14;
      do
      {
        v26 = v5;
        v27 = v24;
        v28 = v24 + 8;
        v29 = *(v25 - 1);
        v25 -= 8;
        v30 = v23;
        v31 = *v23;
        v32 = (v29 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
        swift_beginAccess();
        v33 = *v32;
        v34 = (v31 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
        swift_beginAccess();
        if (*v34 < v33)
        {
          a3 = v27;
          if (v28 != v26)
          {
            *v27 = *v30;
          }

          if (v14 <= v4 || (v5 = v30, v30 <= v36))
          {
            v5 = v30;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v5 = v26;
        if (v28 != v14)
        {
          *v27 = *v25;
        }

        v24 = v27 - 8;
        v14 = v25;
        v23 = v30;
      }

      while (v25 > v4);
      v14 = v25;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      v13 = a3;
      memmove(a4, __dst, 8 * v9);
      a3 = v13;
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && v5 < a3)
    {
      while (1)
      {
        v15 = a3;
        v16 = *v4;
        v17 = (*v5 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
        swift_beginAccess();
        v18 = *v17;
        v19 = (v16 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
        swift_beginAccess();
        if (*v19 >= v18)
        {
          break;
        }

        v20 = v5;
        v21 = v6 == v5;
        v5 += 8;
        if (!v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 8;
        if (v4 < v14)
        {
          a3 = v15;
          if (v5 < v15)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v20 = v4;
      v21 = v6 == v4;
      v4 += 8;
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v20;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_37:
  if (v5 != v4 || v5 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v5, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1AE435924(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AE4359B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1AE4359C4(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_1AE44484C();
  MEMORY[0x1B26FF480](a2);
  v8 = sub_1AE44486C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1AE436A24(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1AE435AE4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  LODWORD(v6) = *(a1 + 32);
  if (v6 == 14)
  {
    goto LABEL_4;
  }

  LOBYTE(v8) = a3;
  v9 = *(a2 + 32);
  v10 = *a4;
  v11 = sub_1AE4347E8(v6);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  LOBYTE(v17) = v12;
  if (v10[3] < v16)
  {
    sub_1AE436560(v16, v8 & 1, &qword_1EB5DB170);
    v11 = sub_1AE4347E8(v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = sub_1AE44483C();
    __break(1u);
  }

  if (v8)
  {
LABEL_10:
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    v22 = *a4;
    *(*a4 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v22[6] + v11) = v6;
    *(v22[7] + 4 * v11) = v9;
    v23 = v22[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v22[2] = v24;
      v25 = *(a1 + 16);
      if (v25 == 1)
      {
LABEL_4:

        return;
      }

      v17 = 0;
      v6 = a1 + 33;
      while (1)
      {
        v26 = v17 + 1;
        if (v17 + 1 >= v25)
        {
          goto LABEL_30;
        }

        v27 = *(a2 + 16);
        if (v26 == v27)
        {
          goto LABEL_4;
        }

        if (v26 >= v27)
        {
          goto LABEL_31;
        }

        v8 = *(v6 + v17);
        if (v8 == 14)
        {
          goto LABEL_4;
        }

        v9 = *(a2 + 36 + 4 * v17);
        v28 = *a4;
        v29 = sub_1AE4347E8(v8);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v15 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v15)
        {
          goto LABEL_28;
        }

        v34 = v30;
        if (v28[3] < v33)
        {
          sub_1AE436560(v33, 1, &qword_1EB5DB170);
          v29 = sub_1AE4347E8(v8);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        if (v34)
        {
          goto LABEL_11;
        }

        v36 = *a4;
        *(*a4 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v36[6] + v29) = v8;
        *(v36[7] + 4 * v29) = v9;
        v37 = v36[2];
        v15 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v15)
        {
          break;
        }

        v36[2] = v38;
        v25 = *(a1 + 16);
        v39 = v17 + 2;
        ++v17;
        if (v39 == v25)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = v11;
  sub_1AE436424(&qword_1EB5DB170);
  v11 = v21;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB150);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_32:
  sub_1AE4445BC();
  MEMORY[0x1B26FF0C0](0xD00000000000001BLL, 0x80000001AE462B30);
  sub_1AE44464C();
  MEMORY[0x1B26FF0C0](39, 0xE100000000000000);
  sub_1AE44465C();
  __break(1u);
}

void sub_1AE435EBC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  LODWORD(v6) = *(a1 + 32);
  if (v6 == 17)
  {
    goto LABEL_4;
  }

  LOBYTE(v8) = a3;
  v9 = *(a2 + 32);
  v10 = *a4;
  v11 = sub_1AE4347E8(v6);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  LOBYTE(v17) = v12;
  if (v10[3] < v16)
  {
    sub_1AE436560(v16, v8 & 1, &qword_1EB5DB0D8);
    v11 = sub_1AE4347E8(v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = sub_1AE44483C();
    __break(1u);
  }

  if (v8)
  {
LABEL_10:
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    v22 = *a4;
    *(*a4 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v22[6] + v11) = v6;
    *(v22[7] + 4 * v11) = v9;
    v23 = v22[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v22[2] = v24;
      v25 = *(a1 + 16);
      if (v25 == 1)
      {
LABEL_4:

        return;
      }

      v17 = 0;
      v6 = a1 + 33;
      while (1)
      {
        v26 = v17 + 1;
        if (v17 + 1 >= v25)
        {
          goto LABEL_30;
        }

        v27 = *(a2 + 16);
        if (v26 == v27)
        {
          goto LABEL_4;
        }

        if (v26 >= v27)
        {
          goto LABEL_31;
        }

        v8 = *(v6 + v17);
        if (v8 == 17)
        {
          goto LABEL_4;
        }

        v9 = *(a2 + 36 + 4 * v17);
        v28 = *a4;
        v29 = sub_1AE4347E8(v8);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v15 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v15)
        {
          goto LABEL_28;
        }

        v34 = v30;
        if (v28[3] < v33)
        {
          sub_1AE436560(v33, 1, &qword_1EB5DB0D8);
          v29 = sub_1AE4347E8(v8);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        if (v34)
        {
          goto LABEL_11;
        }

        v36 = *a4;
        *(*a4 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v36[6] + v29) = v8;
        *(v36[7] + 4 * v29) = v9;
        v37 = v36[2];
        v15 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v15)
        {
          break;
        }

        v36[2] = v38;
        v25 = *(a1 + 16);
        v39 = v17 + 2;
        ++v17;
        if (v39 == v25)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = v11;
  sub_1AE436424(&qword_1EB5DB0D8);
  v11 = v21;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB150);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_32:
  sub_1AE4445BC();
  MEMORY[0x1B26FF0C0](0xD00000000000001BLL, 0x80000001AE462B30);
  sub_1AE44464C();
  MEMORY[0x1B26FF0C0](39, 0xE100000000000000);
  sub_1AE44465C();
  __break(1u);
}

uint64_t sub_1AE436294(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1AE44469C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1AE44469C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1AE436384(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1AE436FF8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AE436384(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1AE44469C();
LABEL_9:
  result = sub_1AE4445EC();
  *v1 = result;
  return result;
}

void *sub_1AE436424(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1AE4446AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 4 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 4 * v15);
      *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1AE436560(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_1AE4446BC();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = a2;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 4 * v20);
      sub_1AE44484C();
      MEMORY[0x1B26FF480](v21);
      result = sub_1AE44486C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_31;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_31:
  *v4 = v8;
  return result;
}

uint64_t sub_1AE4367DC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1AE44459C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      sub_1AE44484C();
      MEMORY[0x1B26FF480](v18);
      result = sub_1AE44486C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1AE436A24(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AE4367DC(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1AE436B94(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_1AE436CC4(v6 + 1, a4);
  }

  v9 = *v4;
  sub_1AE44484C();
  MEMORY[0x1B26FF480](v5);
  result = sub_1AE44486C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE44482C();
  __break(1u);
  return result;
}

void *sub_1AE436B94(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1AE44458C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1AE436CC4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1AE44459C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_1AE44484C();
      MEMORY[0x1B26FF480](v17);
      result = sub_1AE44486C();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

void (*sub_1AE436EDC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B26FF200](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1AE436F5C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE436F64(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1AE44469C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1AE434A58(v3, 0);
  sub_1AE436FF8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1AE436FF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE44469C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1AE44469C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AE43D6C0(&qword_1EB5DB140, &qword_1EB5DB138);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB138);
            v9 = sub_1AE436EDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AXBoundingBox();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s16AXMediaUtilities13AXBoundingBoxC9timestamp10containing4heatACSd_SaySo7CGPointVGSftcfC_0(uint64_t a1, double a2, float a3)
{
  v6 = sub_1AE4443DC();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 40);
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      v17 = *(v12 - 1);
      v18 = *v12;
      if (v17 < v14)
      {
        v16 = v16 + v14 - v17;
        v14 = *(v12 - 1);
      }

      if (v18 < v13)
      {
        v15 = v15 + v13 - v18;
        v13 = *v12;
      }

      v30.origin.x = v14;
      v30.origin.y = v13;
      v30.size.width = v16;
      v30.size.height = v15;
      if (CGRectGetMaxX(v30) < v17)
      {
        v16 = v17 - v14;
      }

      v31.origin.x = v14;
      v31.origin.y = v13;
      v31.size.width = v16;
      v31.size.height = v15;
      if (CGRectGetMaxY(v31) < v18)
      {
        v15 = v18 - v13;
      }

      v12 += 2;
      --v11;
    }

    while (v11);

    sub_1AE4443CC();
    v19 = type metadata accessor for AXBoundingBox();
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
    sub_1AE4443CC();
    v22 = &v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat];
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat] = 0;
    v23 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle;
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle] = 0;
    v24 = &v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth];
    *v24 = 0;
    v24[4] = 1;
    v25 = &v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d];
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = 1;
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints] = 0;
    v26 = &v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize];
    *v26 = 0;
    v26[8] = 1;
    swift_beginAccess();
    (*(v7 + 24))(&v20[v21], v10, v6);
    swift_endAccess();
    swift_beginAccess();
    *v22 = a3;
    swift_beginAccess();
    *&v20[v23] = 0;
    v27 = &v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
    *v27 = v14;
    v27[1] = v13;
    v27[2] = v16;
    v27[3] = v15;
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex] = 0;
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass] = MEMORY[0x1E69E7CC0];
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen] = a2;
    *&v20[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen] = a2;
    v29.receiver = v20;
    v29.super_class = v19;
    v28 = objc_msgSendSuper2(&v29, sel_init);
    (*(v7 + 8))(v10, v6);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s16AXMediaUtilities13AXBoundingBoxC24fromCenterNetPredictions4pred10thresholds9timestampSayACGSo12MLMultiArrayC_SDyAA6UITypeOSfGSdtFZ_0(int64_t a1, void *a2, double a3)
{
  v80 = sub_1AE4443DC();
  v6 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &off_1E7A1F000;
  v9 = [a1 shape];
  v84 = sub_1AE43D708(0, &qword_1EB5DB0C0);
  v10 = sub_1AE4444EC();

  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
    goto LABEL_4;
  }

LABEL_66:
  __break(1u);
  do
  {
    v14 = MEMORY[0x1B26FF200](1, v10);
LABEL_8:
    v15 = v14;

    v16 = sub_1AE44455C();

    v17 = [a1 v8[154]];
    v18 = sub_1AE4444EC();

    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B26FF200](2, v18);
    }

    else
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_71;
      }

      v19 = *(v18 + 48);
    }

    v20 = v19;

    v10 = sub_1AE44455C();

    v90 = MEMORY[0x1E69E7CC0];
    if (v16 < 0)
    {
      goto LABEL_70;
    }

    v21 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
LABEL_57:
      v78 = v21;
      return;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    v86 = a1;
    v22 = 0;
    a1 = v85;
    v75 = v85 + 1;
    v23 = __OFADD__(v85, 1);
    v76 = v23;
    v71 = v10;
    v73 = v85 + 2;
    v24 = __OFADD__(v85, 2);
    v74 = v24;
    v70 = v85 + 3;
    v25 = __OFADD__(v85, 3);
    v72 = v25;
    v69 = v16;
    v68 = (v6 + 24);
    v66 = v16;
    v67 = (v6 + 8);
    v83 = xmmword_1AE452340;
    v8 = 0x1E696A000;
    v78 = MEMORY[0x1E69E7CC0];
    v79 = v10;
    v81 = a2;
    while (!v10)
    {
LABEL_24:
      if (++v22 == v66)
      {
        return;
      }
    }

    if (a1 < 0)
    {
      goto LABEL_63;
    }

    v26 = 0;
    while (1)
    {
      if (a1)
      {
        v88 = v21;
        sub_1AE434454(0, a1, 0);
        v27 = 0;
        v21 = v88;
        do
        {
          v89 = MEMORY[0x1E69E7CC0];
          sub_1AE44461C();
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          sub_1AE4445FC();
          sub_1AE44462C();
          sub_1AE44463C();
          sub_1AE44460C();
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          sub_1AE4445FC();
          sub_1AE44462C();
          sub_1AE44463C();
          sub_1AE44460C();
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          sub_1AE4445FC();
          sub_1AE44462C();
          sub_1AE44463C();
          sub_1AE44460C();
          v28 = sub_1AE4444DC();

          v29 = [v86 objectForKeyedSubscript_];

          [v29 floatValue];
          v31 = v30;

          v88 = v21;
          v33 = *(v21 + 2);
          v32 = *(v21 + 3);
          v10 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            sub_1AE434454((v32 > 1), v33 + 1, 1);
            v21 = v88;
          }

          ++v27;
          *(v21 + 2) = v10;
          *(v21 + v33 + 8) = v31;
          a1 = v85;
        }

        while (v85 != v27);
        a2 = v81;
        goto LABEL_37;
      }

      v10 = *(v21 + 2);
      if (!v10)
      {
        break;
      }

LABEL_37:
      v6 = 0;
      v34 = 0;
      do
      {
        if (v6 >= v10)
        {
          __break(1u);
          goto LABEL_57;
        }

        if (*(v21 + v6 + 8) < *(v21 + v34 + 8))
        {
          v6 = v34;
        }

        ++v34;
      }

      while (v10 != v34);
      if (v6 >= v10)
      {
        goto LABEL_59;
      }

      v35 = *(v21 + v6 + 8);
      UIType.init(rawValue:)(v6);
      if (v88 == 14)
      {
        goto LABEL_73;
      }

      if (a2[2] && (v36 = sub_1AE4347E8(v88), (v37 & 1) != 0))
      {
        if (*(a2[7] + 4 * v36) > v35)
        {
          goto LABEL_28;
        }
      }

      else if (v35 < 0.3)
      {
LABEL_28:

        goto LABEL_29;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB1A8);
      inited = swift_initStackObject();
      v39 = a1;
      a1 = inited;
      *(inited + 16) = v83;
      *(inited + 32) = v39;
      *(inited + 40) = v22;
      *(inited + 48) = v26;
      a2 = sub_1AE42D7A0(inited);
      swift_setDeallocating();
      [a2 floatValue];
      v41 = v40;

      v42 = swift_initStackObject();
      *(v42 + 16) = v83;
      if (v76)
      {
        goto LABEL_60;
      }

      a1 = v42;
      *(v42 + 32) = v75;
      *(v42 + 40) = v22;
      *(v42 + 48) = v26;
      a2 = sub_1AE42D7A0(v42);
      swift_setDeallocating();
      [a2 floatValue];
      v44 = v43;

      v45 = swift_initStackObject();
      *(v45 + 16) = v83;
      if (v74)
      {
        goto LABEL_61;
      }

      *(v45 + 32) = v73;
      *(v45 + 40) = v22;
      *(v45 + 48) = v26;
      a2 = sub_1AE42D7A0(v45);
      a1 = &selRef_endVideoFrameEvents;
      swift_setDeallocating();
      [a2 floatValue];
      v47 = v46;

      v48 = swift_initStackObject();
      *(v48 + 16) = v83;
      if (v72)
      {
        goto LABEL_62;
      }

      v49 = (v26 + v44) / v71;
      v50 = 1.0 - (v22 + v41) / v69;
      *(v48 + 32) = v70;
      *(v48 + 40) = v22;
      *(v48 + 48) = v26;
      v51 = sub_1AE42D7A0(v48);
      swift_setDeallocating();
      [v51 floatValue];
      v53 = v52;

      v54 = v53;
      sub_1AE4443CC();
      v78 = type metadata accessor for AXBoundingBox();
      v55 = objc_allocWithZone(v78);
      v56 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
      sub_1AE4443CC();
      v57 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat];
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat] = 0;
      v77 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle] = 0;
      v58 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth];
      *v58 = 0;
      v58[4] = 1;
      v59 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d];
      *v59 = 0;
      *(v59 + 1) = 0;
      v59[16] = 1;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints] = 0;
      v60 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize];
      *v60 = 0;
      v60[8] = 1;
      swift_beginAccess();
      (*v68)(&v55[v56], v82, v80);
      swift_endAccess();
      swift_beginAccess();
      *v57 = v35;
      v61 = v77;
      swift_beginAccess();
      *&v55[v61] = 0;
      v62 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
      *v62 = v49 - v54 * 0.5;
      v62[1] = v50 - v47 * 0.5;
      v62[2] = v54;
      v62[3] = v47;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex] = v6;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass] = v21;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen] = a3;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen] = a3;
      v87.receiver = v55;
      v87.super_class = v78;
      v63 = objc_msgSendSuper2(&v87, sel_init);
      (*v67)(v82, v80);
      v64 = v63;
      MEMORY[0x1B26FF0F0]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1AE4444FC();
      }

      sub_1AE44451C();

      v78 = v90;
      a2 = v81;
      a1 = v85;
LABEL_29:
      v10 = v79;
      v21 = MEMORY[0x1E69E7CC0];
      if (++v26 == v79)
      {
        goto LABEL_24;
      }
    }

    v6 = 0;
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v11 = MEMORY[0x1B26FF200](0, v10);
LABEL_4:
    v12 = v11;

    v10 = [v12 integerValue];

    v85 = v10 - 4;
    if (__OFSUB__(v10, 4))
    {
      __break(1u);
      goto LABEL_66;
    }

    v13 = [a1 v8[154]];
    v10 = sub_1AE4444EC();
  }

  while ((v10 & 0xC000000000000001) != 0);
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v14 = *(v10 + 40);
    goto LABEL_8;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

void _s16AXMediaUtilities13AXBoundingBoxC36fromClickabilityCenterNetPredictions4pred10thresholds9timestampSayACGSo12MLMultiArrayC_SDyAA06UITypeF0OSfGSdtFZ_0(int64_t a1, void *a2, double a3)
{
  v80 = sub_1AE4443DC();
  v6 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &off_1E7A1F000;
  v9 = [a1 shape];
  v84 = sub_1AE43D708(0, &qword_1EB5DB0C0);
  v10 = sub_1AE4444EC();

  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
    goto LABEL_4;
  }

LABEL_66:
  __break(1u);
  do
  {
    v14 = MEMORY[0x1B26FF200](1, v10);
LABEL_8:
    v15 = v14;

    v16 = sub_1AE44455C();

    v17 = [a1 v8[154]];
    v18 = sub_1AE4444EC();

    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B26FF200](2, v18);
    }

    else
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_71;
      }

      v19 = *(v18 + 48);
    }

    v20 = v19;

    v10 = sub_1AE44455C();

    v90 = MEMORY[0x1E69E7CC0];
    if (v16 < 0)
    {
      goto LABEL_70;
    }

    v21 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
LABEL_57:
      v78 = v21;
      return;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    v86 = a1;
    v22 = 0;
    a1 = v85;
    v75 = v85 + 1;
    v23 = __OFADD__(v85, 1);
    v76 = v23;
    v71 = v10;
    v73 = v85 + 2;
    v24 = __OFADD__(v85, 2);
    v74 = v24;
    v70 = v85 + 3;
    v25 = __OFADD__(v85, 3);
    v72 = v25;
    v69 = v16;
    v68 = (v6 + 24);
    v66 = v16;
    v67 = (v6 + 8);
    v83 = xmmword_1AE452340;
    v8 = 0x1E696A000;
    v78 = MEMORY[0x1E69E7CC0];
    v79 = v10;
    v81 = a2;
    while (!v10)
    {
LABEL_24:
      if (++v22 == v66)
      {
        return;
      }
    }

    if (a1 < 0)
    {
      goto LABEL_63;
    }

    v26 = 0;
    while (1)
    {
      if (a1)
      {
        v88 = v21;
        sub_1AE434454(0, a1, 0);
        v27 = 0;
        v21 = v88;
        do
        {
          v89 = MEMORY[0x1E69E7CC0];
          sub_1AE44461C();
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          sub_1AE4445FC();
          sub_1AE44462C();
          sub_1AE44463C();
          sub_1AE44460C();
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          sub_1AE4445FC();
          sub_1AE44462C();
          sub_1AE44463C();
          sub_1AE44460C();
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          sub_1AE4445FC();
          sub_1AE44462C();
          sub_1AE44463C();
          sub_1AE44460C();
          v28 = sub_1AE4444DC();

          v29 = [v86 objectForKeyedSubscript_];

          [v29 floatValue];
          v31 = v30;

          v88 = v21;
          v33 = *(v21 + 2);
          v32 = *(v21 + 3);
          v10 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            sub_1AE434454((v32 > 1), v33 + 1, 1);
            v21 = v88;
          }

          ++v27;
          *(v21 + 2) = v10;
          *(v21 + v33 + 8) = v31;
          a1 = v85;
        }

        while (v85 != v27);
        a2 = v81;
        goto LABEL_37;
      }

      v10 = *(v21 + 2);
      if (!v10)
      {
        break;
      }

LABEL_37:
      v6 = 0;
      v34 = 0;
      do
      {
        if (v6 >= v10)
        {
          __break(1u);
          goto LABEL_57;
        }

        if (*(v21 + v6 + 8) < *(v21 + v34 + 8))
        {
          v6 = v34;
        }

        ++v34;
      }

      while (v10 != v34);
      if (v6 >= v10)
      {
        goto LABEL_59;
      }

      v35 = *(v21 + v6 + 8);
      UITypeClickability.init(rawValue:)(v6);
      if (v88 == 17)
      {
        goto LABEL_73;
      }

      if (a2[2] && (v36 = sub_1AE4347E8(v88), (v37 & 1) != 0))
      {
        if (*(a2[7] + 4 * v36) > v35)
        {
          goto LABEL_28;
        }
      }

      else if (v35 < 0.3)
      {
LABEL_28:

        goto LABEL_29;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB1A8);
      inited = swift_initStackObject();
      v39 = a1;
      a1 = inited;
      *(inited + 16) = v83;
      *(inited + 32) = v39;
      *(inited + 40) = v22;
      *(inited + 48) = v26;
      a2 = sub_1AE42D7A0(inited);
      swift_setDeallocating();
      [a2 floatValue];
      v41 = v40;

      v42 = swift_initStackObject();
      *(v42 + 16) = v83;
      if (v76)
      {
        goto LABEL_60;
      }

      a1 = v42;
      *(v42 + 32) = v75;
      *(v42 + 40) = v22;
      *(v42 + 48) = v26;
      a2 = sub_1AE42D7A0(v42);
      swift_setDeallocating();
      [a2 floatValue];
      v44 = v43;

      v45 = swift_initStackObject();
      *(v45 + 16) = v83;
      if (v74)
      {
        goto LABEL_61;
      }

      *(v45 + 32) = v73;
      *(v45 + 40) = v22;
      *(v45 + 48) = v26;
      a2 = sub_1AE42D7A0(v45);
      a1 = &selRef_endVideoFrameEvents;
      swift_setDeallocating();
      [a2 floatValue];
      v47 = v46;

      v48 = swift_initStackObject();
      *(v48 + 16) = v83;
      if (v72)
      {
        goto LABEL_62;
      }

      v49 = (v26 + v44) / v71;
      v50 = 1.0 - (v22 + v41) / v69;
      *(v48 + 32) = v70;
      *(v48 + 40) = v22;
      *(v48 + 48) = v26;
      v51 = sub_1AE42D7A0(v48);
      swift_setDeallocating();
      [v51 floatValue];
      v53 = v52;

      v54 = v53;
      sub_1AE4443CC();
      v78 = type metadata accessor for AXBoundingBox();
      v55 = objc_allocWithZone(v78);
      v56 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_id;
      sub_1AE4443CC();
      v57 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat];
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat] = 0;
      v77 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_angle] = 0;
      v58 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_depth];
      *v58 = 0;
      v58[4] = 1;
      v59 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_centroid3d];
      *v59 = 0;
      *(v59 + 1) = 0;
      v59[16] = 1;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_knownFeaturePoints] = 0;
      v60 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_physicalSize];
      *v60 = 0;
      v60[8] = 1;
      swift_beginAccess();
      (*v68)(&v55[v56], v82, v80);
      swift_endAccess();
      swift_beginAccess();
      *v57 = v35;
      v61 = v77;
      swift_beginAccess();
      *&v55[v61] = 0;
      v62 = &v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
      *v62 = v49 - v54 * 0.5;
      v62[1] = v50 - v47 * 0.5;
      v62[2] = v54;
      v62[3] = v47;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex] = v6;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heatByClass] = v21;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_firstSeen] = a3;
      *&v55[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_lastSeen] = a3;
      v87.receiver = v55;
      v87.super_class = v78;
      v63 = objc_msgSendSuper2(&v87, sel_init);
      (*v67)(v82, v80);
      v64 = v63;
      MEMORY[0x1B26FF0F0]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1AE4444FC();
      }

      sub_1AE44451C();

      v78 = v90;
      a2 = v81;
      a1 = v85;
LABEL_29:
      v10 = v79;
      v21 = MEMORY[0x1E69E7CC0];
      if (++v26 == v79)
      {
        goto LABEL_24;
      }
    }

    v6 = 0;
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v11 = MEMORY[0x1B26FF200](0, v10);
LABEL_4:
    v12 = v11;

    v10 = [v12 integerValue];

    v85 = v10 - 8;
    if (__OFSUB__(v10, 8))
    {
      __break(1u);
      goto LABEL_66;
    }

    v13 = [a1 v8[154]];
    v10 = sub_1AE4444EC();
  }

  while ((v10 & 0xC000000000000001) != 0);
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v14 = *(v10 + 40);
    goto LABEL_8;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t _s16AXMediaUtilities13AXBoundingBoxC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(unint64_t a1, float a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
  }

LABEL_3:

  v31[0] = sub_1AE436F64(v4);
  sub_1AE434B50(v31);
  v33 = v31[0];
  if ((v31[0] & 0x8000000000000000) != 0 || (v31[0] & 0x4000000000000000) != 0)
  {
    if (sub_1AE44469C() < 1)
    {
      goto LABEL_39;
    }

    while (1)
    {
LABEL_6:
      v5 = sub_1AE42FCD0(0);
      MEMORY[0x1B26FF0F0]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AE4444FC();
      }

      sub_1AE44451C();
      v6 = v33;
      v29 = v34;
      v32 = v3;
      v7 = v33 >> 62 ? sub_1AE44469C() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = &v5[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
      v9 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
      swift_beginAccess();
      v30 = v9;
      swift_beginAccess();
      if (v7)
      {
        break;
      }

      v27 = v3;
LABEL_27:

      v33 = v27;
      if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
      {
        if (sub_1AE44469C() <= 0)
        {
LABEL_33:

          return v29;
        }
      }

      else if (*(v27 + 16) <= 0)
      {
        goto LABEL_33;
      }
    }

    v3 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1B26FF200](v3, v6);
      }

      else
      {
        if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v10 = *(v6 + 8 * v3 + 32);
      }

      v11 = v10;
      v12 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        if (sub_1AE44469C() < 1)
        {
        }

        goto LABEL_3;
      }

      v13 = &v10[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
      swift_beginAccess();
      v35 = CGRectUnion(*v13, *v8);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      v18 = CGRectGetHeight(v35);
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v19 = sqrt(v18 * CGRectGetWidth(v36));
      if (v19 == 0.0)
      {
        if (a2 >= 0.0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v37 = CGRectIntersection(*v13, *v8);
        v20 = v37.origin.x;
        v21 = v37.origin.y;
        v22 = v37.size.width;
        v23 = v37.size.height;
        v24 = CGRectGetHeight(v37);
        v38.origin.x = v20;
        v38.origin.y = v21;
        v38.size.width = v22;
        v38.size.height = v23;
        v25 = sqrt(v24 * CGRectGetWidth(v38)) / v19;
        if (v25 <= a2)
        {
          goto LABEL_12;
        }
      }

      v26 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
      swift_beginAccess();
      if (*&v11[v26] == *&v5[v30])
      {

        goto LABEL_13;
      }

LABEL_12:
      sub_1AE4445FC();
      sub_1AE44462C();
      sub_1AE44463C();
      sub_1AE44460C();
LABEL_13:
      ++v3;
      if (v12 == v7)
      {
        v27 = v32;
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_27;
      }
    }
  }

  if (*(v31[0] + 16) >= 1)
  {
    goto LABEL_6;
  }

LABEL_39:

  return MEMORY[0x1E69E7CC0];
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1AE438C48()
{
  result = qword_1EB5DAF80;
  if (!qword_1EB5DAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DAF80);
  }

  return result;
}

uint64_t sub_1AE438C9C(float a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0C8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0D0);
  sub_1AE4443FC();
  sub_1AE43D708(0, &qword_1EB5DB148);
  (*(v8 + 16))(v11, v13, v7);
  sub_1AE43D6C0(&qword_1EB5DB128, &qword_1EB5DB0C8);
  v14 = sub_1AE44457C();
  _s16AXMediaUtilities13AXBoundingBoxC24fromCenterNetPredictions4pred10thresholds9timestampSayACGSo12MLMultiArrayC_SDyAA6UITypeOSfGSdtFZ_0(v14, a4, 0.0);
  v16 = v15;

  v35 = MEMORY[0x1E69E7CC0];
  if (v16 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AE44469C())
  {
    v31 = v13;
    v32 = v8;
    v33 = v7;
    v34 = v16;
    v18 = 0;
    v7 = v16 & 0xC000000000000001;
    v19 = v16 & 0xFFFFFFFFFFFFFF8;
    v8 = v16 + 32;
    v16 = a3 + 56;
    while (1)
    {
      if (v7)
      {
        v20 = MEMORY[0x1B26FF200](v18, v34);
      }

      else
      {
        if (v18 >= *(v19 + 16))
        {
          goto LABEL_21;
        }

        v20 = *(v8 + 8 * v18);
      }

      v21 = v20;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v23 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
      swift_beginAccess();
      v13 = *&v21[v23];
      if (v13 > 0xD)
      {
        goto LABEL_22;
      }

      if (*(a3 + 16) && (sub_1AE44484C(), MEMORY[0x1B26FF480](v13), v24 = sub_1AE44486C(), v25 = -1 << *(a3 + 32), v26 = v24 & ~v25, ((*(v16 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
      {
        v27 = ~v25;
        while (v13 != *(*(a3 + 48) + v26))
        {
          v26 = (v26 + 1) & v27;
          if (((*(v16 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
LABEL_4:
        sub_1AE4445FC();
        v13 = *(v35 + 16);
        sub_1AE44462C();
        sub_1AE44463C();
        sub_1AE44460C();
      }

      if (v18 == i)
      {
        v28 = v35;
        v8 = v32;
        v7 = v33;
        v13 = v31;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v29 = _s16AXMediaUtilities13AXBoundingBoxC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(v28, a1);

  (*(v8 + 8))(v13, v7);
  return v29;
}

char sub_1AE439020(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  MinX = CGRectGetMinX(*v3);
  MinY = CGRectGetMinY(*v3);
  Width = CGRectGetWidth(*v3);
  Height = CGRectGetHeight(*v3);
  v8 = &v1[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box];
  *v8 = MinX;
  v8[1] = MinY;
  v8[2] = Width;
  v8[3] = Height;
  v9 = (a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
  swift_beginAccess();
  *&v1[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_confidence] = *v9;
  v10 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  *&v1[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_label] = v11 + 1;
  LOBYTE(v11) = UIType.init(rawValue:)(v11);
  if (v18 == 14)
  {
LABEL_5:
    __break(1u);
    return v11;
  }

  v17 = v18;
  v12 = sub_1AE44448C();
  v13 = &v1[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_labelName];
  *v13 = v12;
  v13[1] = v14;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for AXMElementDetectorResult();
  LOBYTE(v11) = objc_msgSendSuper2(&v16, sel_init);
  return v11;
}

uint64_t sub_1AE439190(void *a1, uint64_t a2, float a3)
{
  *&v110 = a2;
  *&MinX = a3;
  v99 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0C8);
  v103 = *(v104 - 8);
  v4 = MEMORY[0x1EEE9AC00](v104);
  v109 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v108 = &v93 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v93 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0D0);
  v94 = *(v106 - 8);
  v9 = MEMORY[0x1EEE9AC00](v106);
  v102 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v101 = &v93 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v93 - v13;
  v14 = sub_1AE439F60(&unk_1F23E9270, &qword_1EB5DB188);
  v15 = 0;
  v16 = v14 + 56;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v20 = byte_1F23E9240[v15 + 32];
    if (*(v14 + 16) && (sub_1AE44484C(), MEMORY[0x1B26FF480](v20), v21 = sub_1AE44486C(), v22 = -1 << *(v14 + 32), v23 = v21 & ~v22, ((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (*(*(v14 + 48) + v23) != v20)
      {
        v23 = (v23 + 1) & v24;
        if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AE434494(0, *(v17 + 16) + 1, 1);
        v17 = v114;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AE434494((v18 > 1), v19 + 1, 1);
        v17 = v114;
      }

      *(v17 + 16) = v19 + 1;
      *(v17 + v19 + 32) = v20;
    }

    ++v15;
  }

  while (v15 != 14);
  v26 = sub_1AE439ECC(v17, sub_1AE43D7A4, &type metadata for UIType, &qword_1EB5DB188);

  v27 = v110;
  if (v110 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v87)
  {
    v100 = v26;
    if (i)
    {
      if (i < 1)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v29 = 0;
      v30 = v27 & 0xC000000000000001;
      v31 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v30)
        {
          v32 = MEMORY[0x1B26FF200](v29);
        }

        else
        {
          v32 = *(v27 + 8 * v29 + 32);
        }

        v33 = v32;
        [v32 floatValue];
        v35 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1AE434954(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v31 = sub_1AE434954((v36 > 1), v37 + 1, 1, v31);
        }

        ++v29;

        *(v31 + 2) = v38;
        *&v31[4 * v37 + 32] = v35;
        v27 = v110;
      }

      while (i != v29);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
      v38 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB170);
      v39 = sub_1AE4446CC();
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC8];
    }

    v116 = v39;
    sub_1AE435AE4(byte_1F23E9240, v31, 1, &v116);
    v98 = v116;
    sub_1AE43D6C0(&qword_1EB5DB0E0, &qword_1EB5DB0D0);
    v40 = v99;
    sub_1AE44440C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0E8);
    v41 = swift_allocObject();
    v110 = xmmword_1AE452350;
    *(v41 + 16) = xmmword_1AE452350;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0F0);
    *(v41 + 56) = v42;
    v43 = sub_1AE43D6C0(&qword_1EB5DB0F8, &qword_1EB5DB0F0);
    *(v41 + 64) = v43;
    *(v41 + 32) = 0;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB100);
    *(v41 + 96) = v44;
    v45 = sub_1AE43D6C0(&qword_1EB5DB108, &qword_1EB5DB100);
    *(v41 + 72) = xmmword_1AE452360;
    *(v41 + 136) = v42;
    *(v41 + 144) = v43;
    *(v41 + 104) = v45;
    *(v41 + 112) = 0;
    *(v41 + 176) = v42;
    *(v41 + 184) = v43;
    *(v41 + 152) = 0;
    sub_1AE44441C();

    v46 = swift_allocObject();
    *(v46 + 16) = v110;
    *(v46 + 56) = v42;
    *(v46 + 64) = v43;
    *(v46 + 32) = 0;
    *(v46 + 96) = v44;
    *(v46 + 104) = v45;
    *(v46 + 72) = xmmword_1AE452370;
    *(v46 + 136) = v42;
    *(v46 + 144) = v43;
    *(v46 + 112) = 0;
    *(v46 + 176) = v42;
    *(v46 + 184) = v43;
    *(v46 + 152) = 0;
    sub_1AE44441C();

    v47 = swift_allocObject();
    *(v47 + 16) = v110;
    *(v47 + 56) = v42;
    *(v47 + 64) = v43;
    *(v47 + 32) = 0;
    *(v47 + 96) = v44;
    *(v47 + 104) = v45;
    *(v47 + 72) = xmmword_1AE452380;
    *(v47 + 136) = v42;
    *(v47 + 144) = v43;
    *(v47 + 112) = 0;
    *(v47 + 176) = v42;
    *(v47 + 184) = v43;
    *(v47 + 152) = 0;
    v48 = v109;
    sub_1AE44441C();

    *&v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB110);
    v49 = v103;
    v50 = *(v103 + 72);
    v51 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v99 = (v51 + 2 * v50);
    v96 = v50;
    v52 = swift_allocObject();
    v97 = xmmword_1AE452330;
    *(v52 + 16) = xmmword_1AE452330;
    v53 = *(v49 + 16);
    v54 = v104;
    v53(v52 + v51, v48, v104);
    v53(v52 + v51 + v50, v107, v54);
    v116 = v52;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB118);
    sub_1AE43D6C0(&qword_1EB5DB120, &qword_1EB5DB118);
    sub_1AE43D6C0(&qword_1EB5DB128, &qword_1EB5DB0C8);
    v55 = v101;
    sub_1AE4443EC();
    v56 = swift_allocObject();
    *(v56 + 16) = v97;
    v57 = v56 + v51;
    v53(v57, v109, v54);
    v53(v57 + v96, v108, v54);
    v116 = v56;
    v58 = v102;
    sub_1AE4443EC();
    v59 = v98;
    v60 = sub_1AE438C9C(*&MinX, v55, v100, v98);

    v61 = sub_1AE438C9C(*&MinX, v58, v14, v59);

    v116 = v60;
    sub_1AE436294(v61);
    v62 = v116;
    v115 = MEMORY[0x1E69E7CC0];
    if (v116 >> 62)
    {
      break;
    }

    v14 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_47;
    }

LABEL_33:
    if (v14 < 1)
    {
      goto LABEL_50;
    }

    v63 = 0;
    while (1)
    {
      v64 = (v62 & 0xC000000000000001) != 0 ? MEMORY[0x1B26FF200](v63, v62) : *(v62 + 8 * v63 + 32);
      v65 = v64;
      v66 = type metadata accessor for AXMElementDetectorResult();
      v67 = objc_allocWithZone(v66);
      v68 = &v65[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
      swift_beginAccess();
      x = v68->origin.x;
      y = v68->origin.y;
      width = v68->size.width;
      height = v68->size.height;
      v73 = v65;
      v117.origin.x = x;
      v117.origin.y = y;
      v117.size.width = width;
      v117.size.height = height;
      MinX = CGRectGetMinX(v117);
      MinY = CGRectGetMinY(*v68);
      v75 = CGRectGetWidth(*v68);
      v76 = CGRectGetHeight(*v68);
      v77 = &v67[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box];
      *v77 = MinX;
      v77[1] = MinY;
      v77[2] = v75;
      v77[3] = v76;
      v78 = &v73[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat];
      swift_beginAccess();
      *&v67[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_confidence] = *v78;
      v26 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
      swift_beginAccess();
      v79 = *&v73[v26];
      if (__OFADD__(v79, 1))
      {
        break;
      }

      *&v67[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_label] = v79 + 1;
      UIType.init(rawValue:)(v79);
      if (v113 == 14)
      {
        goto LABEL_51;
      }

      v112 = v113;
      v80 = sub_1AE44448C();
      v81 = &v67[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_labelName];
      *v81 = v80;
      v81[1] = v82;
      v111.receiver = v67;
      v111.super_class = v66;
      v83 = objc_msgSendSuper2(&v111, sel_init);

      v84 = v83;
      MEMORY[0x1B26FF0F0]();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AE4444FC();
      }

      ++v63;
      sub_1AE44451C();

      if (v14 == v63)
      {
        v85 = v115;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_45:
    v86 = v27;
    v87 = sub_1AE44469C();
    v27 = v86;
  }

  v14 = sub_1AE44469C();
  if (v14)
  {
    goto LABEL_33;
  }

LABEL_47:
  v85 = MEMORY[0x1E69E7CC0];
LABEL_48:

  v88 = *(v94 + 8);
  v89 = v106;
  v88(v102, v106);
  v88(v101, v89);
  v90 = *(v103 + 8);
  v91 = v104;
  v90(v109, v104);
  v90(v108, v91);
  v90(v107, v91);
  v88(v105, v89);
  return v85;
}

uint64_t sub_1AE439ECC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1B26FF170](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      sub_1AE4359C4(&v12, v11, a4);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1AE439F60(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1AE4445AC();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_1AE44484C();
      MEMORY[0x1B26FF480](v11);
      result = sub_1AE44486C();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

AXMediaUtilities::UITypeClickability_optional sub_1AE43A094(float a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0C8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0D0);
  sub_1AE4443FC();
  sub_1AE43D708(0, &qword_1EB5DB148);
  (*(v8 + 16))(v11, v13, v7);
  sub_1AE43D6C0(&qword_1EB5DB128, &qword_1EB5DB0C8);
  v14 = sub_1AE44457C();
  _s16AXMediaUtilities13AXBoundingBoxC36fromClickabilityCenterNetPredictions4pred10thresholds9timestampSayACGSo12MLMultiArrayC_SDyAA06UITypeF0OSfGSdtFZ_0(v14, a4, 0.0);
  v16 = v15;

  v37 = MEMORY[0x1E69E7CC0];
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_23:
    v29 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v30 = _s16AXMediaUtilities13AXBoundingBoxC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(v29, a1);

    (*(v8 + 8))(v13, v7);
    return v30;
  }

LABEL_22:
  v17 = sub_1AE44469C();
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_3:
  v32 = v13;
  v33 = v8;
  v34 = v7;
  v35 = v16;
  v18 = 0;
  v7 = v16 & 0xC000000000000001;
  v19 = v16 & 0xFFFFFFFFFFFFFF8;
  v8 = v16 + 32;
  v16 = a3 + 56;
  while (1)
  {
    if (v7)
    {
      v20 = MEMORY[0x1B26FF200](v18, v35);
    }

    else
    {
      if (v18 >= *(v19 + 16))
      {
        goto LABEL_21;
      }

      v20 = *(v8 + 8 * v18);
    }

    v21 = v20;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v23 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
    swift_beginAccess();
    result.value = UITypeClickability.init(rawValue:)(*&v21[v23]).value;
    v13 = v36;
    if (v36 == 17)
    {
      break;
    }

    if (*(a3 + 16) && (sub_1AE44484C(), MEMORY[0x1B26FF480](v13), v25 = sub_1AE44486C(), v26 = -1 << *(a3 + 32), v27 = v25 & ~v26, ((*(v16 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v28 = ~v26;
      while (*(*(a3 + 48) + v27) != v13)
      {
        v27 = (v27 + 1) & v28;
        if (((*(v16 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_4:
      sub_1AE4445FC();
      v13 = *(v37 + 16);
      sub_1AE44462C();
      sub_1AE44463C();
      sub_1AE44460C();
    }

    if (v18 == v17)
    {
      v29 = v37;
      v8 = v33;
      v7 = v34;
      v13 = v32;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

char sub_1AE43A424(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect);
  swift_beginAccess();
  MinX = CGRectGetMinX(*v3);
  MinY = CGRectGetMinY(*v3);
  Width = CGRectGetWidth(*v3);
  Height = CGRectGetHeight(*v3);
  v8 = &v1[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box];
  *v8 = MinX;
  v8[1] = MinY;
  v8[2] = Width;
  v8[3] = Height;
  v9 = (a1 + OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat);
  swift_beginAccess();
  *&v1[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_confidence] = *v9;
  v10 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  *&v1[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_label] = v11 + 1;
  LOBYTE(v11) = UITypeClickability.init(rawValue:)(v11);
  if (v18 == 17)
  {
LABEL_5:
    __break(1u);
    return v11;
  }

  v17 = v18;
  v12 = sub_1AE44448C();
  v13 = &v1[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_labelName];
  *v13 = v12;
  v13[1] = v14;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for AXMClickabilityDetectorResult();
  LOBYTE(v11) = objc_msgSendSuper2(&v16, sel_init);
  return v11;
}

uint64_t sub_1AE43A594(void *a1, uint64_t a2, float a3)
{
  *&v112 = a2;
  *&MinX = a3;
  v101 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0C8);
  v105 = *(v106 - 8);
  v4 = MEMORY[0x1EEE9AC00](v106);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v110 = &v95 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v95 - v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0D0);
  v96 = *(v108 - 8);
  v9 = MEMORY[0x1EEE9AC00](v108);
  v104 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v95 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v95 - v13;
  v14 = sub_1AE439F60(&unk_1F23E92D0, &qword_1EB5DB168);
  v15 = 0;
  v16 = v14 + 56;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v20 = byte_1F23E9298[v15 + 32];
    if (*(v14 + 16) && (sub_1AE44484C(), MEMORY[0x1B26FF480](v20), v21 = sub_1AE44486C(), v22 = -1 << *(v14 + 32), v23 = v21 & ~v22, ((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (*(*(v14 + 48) + v23) != v20)
      {
        v23 = (v23 + 1) & v24;
        if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AE4344C4(0, *(v17 + 16) + 1, 1);
        v17 = v116;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AE4344C4((v18 > 1), v19 + 1, 1);
        v17 = v116;
      }

      *(v17 + 16) = v19 + 1;
      *(v17 + v19 + 32) = v20;
    }

    ++v15;
  }

  while (v15 != 17);
  v26 = sub_1AE439ECC(v17, sub_1AE43D750, &type metadata for UITypeClickability, &qword_1EB5DB168);

  v27 = v112;
  if (v112 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v89)
  {
    v102 = v26;
    if (i)
    {
      if (i < 1)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v29 = 0;
      v30 = v27 & 0xC000000000000001;
      v31 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v30)
        {
          v32 = MEMORY[0x1B26FF200](v29);
        }

        else
        {
          v32 = *(v27 + 8 * v29 + 32);
        }

        v33 = v32;
        [v32 floatValue];
        v35 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1AE434954(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v31 = sub_1AE434954((v36 > 1), v37 + 1, 1, v31);
        }

        ++v29;

        *(v31 + 2) = v38;
        *&v31[4 * v37 + 32] = v35;
        v27 = v112;
      }

      while (i != v29);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
      v38 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0D8);
      v39 = sub_1AE4446CC();
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC8];
    }

    v118 = v39;
    sub_1AE435EBC(byte_1F23E9298, v31, 1, &v118);
    v100 = v118;
    sub_1AE43D6C0(&qword_1EB5DB0E0, &qword_1EB5DB0D0);
    v40 = v101;
    sub_1AE44440C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0E8);
    v41 = swift_allocObject();
    v112 = xmmword_1AE452350;
    *(v41 + 16) = xmmword_1AE452350;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB0F0);
    *(v41 + 56) = v42;
    v43 = sub_1AE43D6C0(&qword_1EB5DB0F8, &qword_1EB5DB0F0);
    *(v41 + 64) = v43;
    *(v41 + 32) = 0;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB100);
    *(v41 + 96) = v44;
    v45 = sub_1AE43D6C0(&qword_1EB5DB108, &qword_1EB5DB100);
    *(v41 + 72) = xmmword_1AE452390;
    *(v41 + 136) = v42;
    *(v41 + 144) = v43;
    *(v41 + 104) = v45;
    *(v41 + 112) = 0;
    *(v41 + 176) = v42;
    *(v41 + 184) = v43;
    *(v41 + 152) = 0;
    sub_1AE44441C();

    v46 = swift_allocObject();
    *(v46 + 16) = v112;
    *(v46 + 56) = v42;
    *(v46 + 64) = v43;
    *(v46 + 32) = 0;
    *(v46 + 96) = v44;
    *(v46 + 104) = v45;
    *(v46 + 72) = xmmword_1AE4523A0;
    *(v46 + 136) = v42;
    *(v46 + 144) = v43;
    *(v46 + 112) = 0;
    *(v46 + 176) = v42;
    *(v46 + 184) = v43;
    *(v46 + 152) = 0;
    sub_1AE44441C();

    v47 = swift_allocObject();
    *(v47 + 16) = v112;
    *(v47 + 56) = v42;
    *(v47 + 64) = v43;
    *(v47 + 32) = 0;
    *(v47 + 96) = v44;
    *(v47 + 104) = v45;
    *(v47 + 72) = xmmword_1AE4523B0;
    *(v47 + 136) = v42;
    *(v47 + 144) = v43;
    *(v47 + 112) = 0;
    *(v47 + 176) = v42;
    *(v47 + 184) = v43;
    *(v47 + 152) = 0;
    v48 = v111;
    sub_1AE44441C();

    *&v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB110);
    v49 = v105;
    v50 = *(v105 + 72);
    v51 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v101 = (v51 + 2 * v50);
    v98 = v50;
    v52 = swift_allocObject();
    v99 = xmmword_1AE452330;
    *(v52 + 16) = xmmword_1AE452330;
    v53 = *(v49 + 16);
    v54 = v106;
    v53(v52 + v51, v48, v106);
    v53(v52 + v51 + v50, v109, v54);
    v118 = v52;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DB118);
    sub_1AE43D6C0(&qword_1EB5DB120, &qword_1EB5DB118);
    sub_1AE43D6C0(&qword_1EB5DB128, &qword_1EB5DB0C8);
    v55 = v103;
    sub_1AE4443EC();
    v56 = swift_allocObject();
    *(v56 + 16) = v99;
    v57 = v56 + v51;
    v53(v57, v111, v54);
    v53(v57 + v98, v110, v54);
    v118 = v56;
    v58 = v104;
    sub_1AE4443EC();
    v59 = v100;
    LOBYTE(v60) = sub_1AE43A094(*&MinX, v55, v102, v100);
    v61 = v60;

    LOBYTE(v62) = sub_1AE43A094(*&MinX, v58, v14, v59);
    v63 = v62;

    v118 = v61;
    sub_1AE436294(v63);
    v64 = v118;
    v117 = MEMORY[0x1E69E7CC0];
    if (v118 >> 62)
    {
      break;
    }

    v14 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_47;
    }

LABEL_33:
    if (v14 < 1)
    {
      goto LABEL_50;
    }

    v65 = 0;
    while (1)
    {
      v66 = (v64 & 0xC000000000000001) != 0 ? MEMORY[0x1B26FF200](v65, v64) : *(v64 + 8 * v65 + 32);
      v67 = v66;
      v68 = type metadata accessor for AXMClickabilityDetectorResult();
      v69 = objc_allocWithZone(v68);
      v70 = &v67[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_rect];
      swift_beginAccess();
      x = v70->origin.x;
      y = v70->origin.y;
      width = v70->size.width;
      height = v70->size.height;
      v75 = v67;
      v119.origin.x = x;
      v119.origin.y = y;
      v119.size.width = width;
      v119.size.height = height;
      MinX = CGRectGetMinX(v119);
      MinY = CGRectGetMinY(*v70);
      v77 = CGRectGetWidth(*v70);
      v78 = CGRectGetHeight(*v70);
      v79 = &v69[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box];
      *v79 = MinX;
      v79[1] = MinY;
      v79[2] = v77;
      v79[3] = v78;
      v80 = &v75[OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_heat];
      swift_beginAccess();
      *&v69[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_confidence] = *v80;
      v26 = OBJC_IVAR____TtC16AXMediaUtilities13AXBoundingBox_classIndex;
      swift_beginAccess();
      v81 = *&v75[v26];
      if (__OFADD__(v81, 1))
      {
        break;
      }

      *&v69[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_label] = v81 + 1;
      UITypeClickability.init(rawValue:)(v81);
      if (v115 == 17)
      {
        goto LABEL_51;
      }

      v114 = v115;
      v82 = sub_1AE44448C();
      v83 = &v69[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_labelName];
      *v83 = v82;
      v83[1] = v84;
      v113.receiver = v69;
      v113.super_class = v68;
      v85 = objc_msgSendSuper2(&v113, sel_init);

      v86 = v85;
      MEMORY[0x1B26FF0F0]();
      if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AE4444FC();
      }

      ++v65;
      sub_1AE44451C();

      if (v14 == v65)
      {
        v87 = v117;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_45:
    v88 = v27;
    v89 = sub_1AE44469C();
    v27 = v88;
  }

  v14 = sub_1AE44469C();
  if (v14)
  {
    goto LABEL_33;
  }

LABEL_47:
  v87 = MEMORY[0x1E69E7CC0];
LABEL_48:

  v90 = *(v96 + 8);
  v91 = v108;
  v90(v104, v108);
  v90(v103, v91);
  v92 = *(v105 + 8);
  v93 = v106;
  v92(v111, v106);
  v92(v110, v93);
  v92(v109, v93);
  v90(v107, v91);
  return v87;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1AE43B314()
{
  result = qword_1EB5DBCF0;
  if (!qword_1EB5DBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DBCF0);
  }

  return result;
}

uint64_t sub_1AE43B37C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1AE43B458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AE43B4C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5DAFC0);
    sub_1AE43D6C0(a2, &qword_1EB5DAFB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AE43B580()
{
  result = qword_1EB5DBCF8;
  if (!qword_1EB5DBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DBCF8);
  }

  return result;
}

unint64_t sub_1AE43B5F8()
{
  result = qword_1EB5DBD00[0];
  if (!qword_1EB5DBD00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DBD00);
  }

  return result;
}

unint64_t sub_1AE43B698()
{
  result = qword_1EB5DB080;
  if (!qword_1EB5DB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DB080);
  }

  return result;
}

unint64_t sub_1AE43B734()
{
  result = qword_1EB5DB098;
  if (!qword_1EB5DB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DB098);
  }

  return result;
}

unint64_t sub_1AE43B7DC()
{
  result = qword_1EB5DB0B0;
  if (!qword_1EB5DB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DB0B0);
  }

  return result;
}

uint64_t sub_1AE43B838()
{
  result = sub_1AE4443DC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of AXBoundingBox.transformed(by:)(_OWORD *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x228);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t getEnumTagSinglePayload for UIType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UIType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UITypeClickability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UITypeClickability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AE43CB4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1AE43CBE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AE43CCAC(uint64_t a1, int a2)
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

uint64_t sub_1AE43CCCC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AXBoundingBox.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXBoundingBox.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AE43CE5C()
{
  result = qword_1EB5DC810[0];
  if (!qword_1EB5DC810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DC810);
  }

  return result;
}

unint64_t sub_1AE43CEB4()
{
  result = qword_1EB5DCA20[0];
  if (!qword_1EB5DCA20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DCA20);
  }

  return result;
}

unint64_t sub_1AE43CF0C()
{
  result = qword_1EB5DCC30[0];
  if (!qword_1EB5DCC30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DCC30);
  }

  return result;
}

unint64_t sub_1AE43CF64()
{
  result = qword_1EB5DCD40;
  if (!qword_1EB5DCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DCD40);
  }

  return result;
}

unint64_t sub_1AE43CFBC()
{
  result = qword_1EB5DCD48[0];
  if (!qword_1EB5DCD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DCD48);
  }

  return result;
}

unint64_t sub_1AE43D014()
{
  result = qword_1EB5DCDD0;
  if (!qword_1EB5DCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DCDD0);
  }

  return result;
}

unint64_t sub_1AE43D06C()
{
  result = qword_1EB5DCDD8[0];
  if (!qword_1EB5DCDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DCDD8);
  }

  return result;
}

unint64_t sub_1AE43D0C4()
{
  result = qword_1EB5DCE60;
  if (!qword_1EB5DCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DCE60);
  }

  return result;
}

unint64_t sub_1AE43D11C()
{
  result = qword_1EB5DCE68[0];
  if (!qword_1EB5DCE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DCE68);
  }

  return result;
}

uint64_t sub_1AE43D170(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1AE4447EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1952540008 && a2 == 0xE400000000000000 || (sub_1AE4447EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000 || (sub_1AE4447EC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1952671090 && a2 == 0xE400000000000000 || (sub_1AE4447EC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E497373616C63 && a2 == 0xEA00000000007865 || (sub_1AE4447EC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C43794274616568 && a2 == 0xEB00000000737361 || (sub_1AE4447EC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6565537473726966 && a2 == 0xE90000000000006ELL || (sub_1AE4447EC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6565537473616CLL && a2 == 0xE800000000000000 || (sub_1AE4447EC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (sub_1AE4447EC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64696F72746E6563 && a2 == 0xEA00000000006433 || (sub_1AE4447EC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001AE4629C0 == a2 || (sub_1AE4447EC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C61636973796870 && a2 == 0xEC000000657A6953)
  {

    return 11;
  }

  else
  {
    v6 = sub_1AE4447EC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1AE43D54C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AE4447EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1AE4447EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C6562616CLL && a2 == 0xE900000000000065 || (sub_1AE4447EC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AE4447EC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1AE43D6C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AE43D708(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1AE43D750()
{
  result = qword_1EB5DB160;
  if (!qword_1EB5DB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DB160);
  }

  return result;
}

unint64_t sub_1AE43D7A4()
{
  result = qword_1EB5DB180;
  if (!qword_1EB5DB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DB180);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1AE43D82C(uint64_t a1, unint64_t *a2)
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

void AXMWorkingDirectory_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1AE37B000, log, OS_LOG_TYPE_ERROR, "Failed to create AXMediaUtilities working directory at path: %@. error: %@", &v3, 0x16u);
}

void _AXMCopyValueForEntitlementUsingTaskCreationBlock_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Unable to get entitlements for client task. Error: %@", &v3, 0xCu);
}

void _AXMCopyValueForEntitlementUsingTaskCreationBlock_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Unable to create security task for checking entitlement %@", &v2, 0xCu);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
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

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}