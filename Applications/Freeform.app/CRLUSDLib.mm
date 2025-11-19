@interface CRLUSDLib
+ (BOOL)addBasePlateWithStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(CGSize)a4 :UsdStage>)a3 andSize:;
+ (BOOL)addReferenceWithStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(int64_t)a4 :(id)a5 UsdStage>)a3 andIndex:(id)a6 andItem:(id)a7 andUsdzURL:andDefaultPrimName:;
+ (BOOL)createUSDZFromFileURLs:(id)a3 toOutputPath:(id)a4 error:(id *)a5;
+ (BOOL)exportUsdzWithRequest:(id)a3 andDestUrl:(id)a4 andError:(id *)a5;
+ (TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>)createImageStagewithImageURL:(id)a3 andSize:(CGSize)a4;
+ (id)compressModel:(id)a3;
+ (id)createImageUSDAwithImageURL:(id)a3 andSize:(CGSize)a4 andOutputDir:(id)a5 andError:(id *)a6;
+ (id)defaultPrimNameForUSD:(id)a3;
+ (int)determineCompression:(id)a3;
@end

@implementation CRLUSDLib

+ (BOOL)createUSDZFromFileURLs:(id)a3 toOutputPath:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v46 = v6;
  if (!v6 || ![v6 count])
  {
    if (a5)
    {
      v29 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:1 userInfo:0];
LABEL_56:
      v28 = 0;
      *a5 = v29;
      goto LABEL_99;
    }

LABEL_59:
    v28 = 0;
    goto LABEL_99;
  }

  if (!v7)
  {
    if (a5)
    {
      v29 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:2 userInfo:0];
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  v44 = v7;
  if ([v7 isFileURL])
  {
    sub_1002F0794(v57, [v7 fileSystemRepresentation]);
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew();
    if (v56)
    {
      v47 = +[NSFileManager defaultManager];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
      if (!v8)
      {
        goto LABEL_48;
      }

      v9 = *v53;
LABEL_8:
      v10 = 0;
      while (1)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * v10);
        if (([v11 isFileURL] & 1) == 0)
        {
          v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10134F0A4();
          }

          v19 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            *&buf[4] = v18;
            *&buf[8] = 2082;
            *&buf[10] = "+[CRLUSDLib createUSDZFromFileURLs:toOutputPath:error:]";
            v62 = 2082;
            v63 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/USDExporter/CRLUSDLib.mm";
            v64 = 1024;
            v65 = 131;
            v66 = 2114;
            v67 = v11;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d URL is not isFileURL: %{public}@", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134F0CC();
          }

          v20 = off_1019EDA68;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v24 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v18;
            *&buf[8] = 2114;
            *&buf[10] = v24;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLUSDLib createUSDZFromFileURLs:toOutputPath:error:]");
          v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/USDExporter/CRLUSDLib.mm"];
          [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:131 isFatal:0 description:"URL is not isFileURL: %{public}@", v11];

          goto LABEL_43;
        }

        v12 = v11;
        sub_1002F0794(buf, [v11 fileSystemRepresentation]);
        pxrInternal__aapl__pxrReserved__::TfGetBaseName();
        v49 = 0;
        if (SBYTE3(v63) >= 0)
        {
          v13 = buf;
        }

        else
        {
          v13 = *buf;
        }

        v14 = [NSString stringWithUTF8String:v13];
        v15 = [v47 fileExistsAtPath:v14 isDirectory:&v49];

        if ((v15 & 1) == 0)
        {
          if (qword_101AD5BD0 != -1)
          {
            sub_10134F0F4();
          }

          v16 = off_1019EDC28;
          if (os_log_type_enabled(off_1019EDC28, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__p) = 138543362;
            *(&__p + 4) = v11;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "File does not exist: %{public}@", &__p, 0xCu);
          }
        }

        if (v49 != 1)
        {
          goto LABEL_24;
        }

        if (qword_101AD5BD0 != -1)
        {
          sub_10134F11C();
        }

        v17 = off_1019EDC28;
        if (os_log_type_enabled(off_1019EDC28, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p) = 138543362;
          *(&__p + 4) = v11;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "File is a directory: %{public}@", &__p, 0xCu);
          if (v15)
          {
LABEL_25:
            if ((v49 & 1) == 0)
            {
              pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddFile();
              if (v60 < 0)
              {
                v23 = *(&__p + 1);
                operator delete(__p);
                if (!v23)
                {
LABEL_77:
                  if (qword_101AD5BD0 != -1)
                  {
                    sub_10134F144();
                  }

                  if (os_log_type_enabled(off_1019EDC28, OS_LOG_TYPE_ERROR))
                  {
                    sub_10134F16C();
                  }

                  if (a5)
                  {
                    *a5 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:5 userInfo:0];
                  }

                  if (v51 < 0)
                  {
                    operator delete(v50);
                  }

                  if (SBYTE3(v63) < 0)
                  {
                    operator delete(*buf);
                  }

                  goto LABEL_88;
                }
              }

              else if (!v60)
              {
                goto LABEL_77;
              }
            }
          }
        }

        else
        {
LABEL_24:
          if (v15)
          {
            goto LABEL_25;
          }
        }

        if (v51 < 0)
        {
          operator delete(v50);
        }

        if (SBYTE3(v63) < 0)
        {
          operator delete(*buf);
        }

LABEL_43:
        if (v8 == ++v10)
        {
          v25 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
          v8 = v25;
          if (v25)
          {
            goto LABEL_8;
          }

LABEL_48:

          if (pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::Save(&v56))
          {
            if (qword_101AD5C30 != -1)
            {
              sub_10134F240();
            }

            v26 = off_1019EDC88;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v44 path];
              *buf = 138543362;
              *&buf[4] = v27;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Exported USDZ to: %{public}@", buf, 0xCu);
            }

            v28 = 1;
          }

          else
          {
            if (qword_101AD5BD0 != -1)
            {
              sub_10134F1D4();
            }

            v42 = off_1019EDC28;
            if (os_log_type_enabled(off_1019EDC28, OS_LOG_TYPE_ERROR))
            {
              sub_10134F1FC(v42);
            }

            if (a5)
            {
              [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:6 userInfo:0];
              *a5 = v28 = 0;
            }

            else
            {
LABEL_88:
              v28 = 0;
            }
          }

LABEL_96:
          v7 = v44;
          goto LABEL_97;
        }
      }
    }

    if (qword_101AD5BD0 != -1)
    {
      sub_10134F268();
    }

    v35 = off_1019EDC28;
    if (os_log_type_enabled(off_1019EDC28, OS_LOG_TYPE_ERROR))
    {
      sub_10134F290(v57, v35, v36, v37, v38, v39, v40, v41);
    }

    if (a5)
    {
      [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:4 userInfo:0];
      *a5 = v28 = 0;
      goto LABEL_96;
    }

    v28 = 0;
LABEL_97:
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&v56);
    if (v58 < 0)
    {
      operator delete(v57[0]);
    }
  }

  else
  {
    v30 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134EFB4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134EFC8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134F07C();
    }

    v31 = off_1019EDA68;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v32, buf, v30, v31);
    }

    v33 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLUSDLib createUSDZFromFileURLs:toOutputPath:error:]");
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/USDExporter/CRLUSDLib.mm"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:110 isFatal:0 description:"outputPath is not isFileURL: %{public}@", v7];

    if (a5)
    {
      [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainUsdLib" code:3 userInfo:0];
      *a5 = v28 = 0;
    }

    else
    {
      v28 = 0;
    }
  }

LABEL_99:

  return v28;
}

+ (id)defaultPrimNameForUSD:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    sub_1002F0794(&__p, [v4 UTF8String]);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    if (v14)
    {
      v5 = sub_1002F0D8C(&v14);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v11, v5);
      v6 = sub_1002F0E04(&v11);
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetDefaultPrim(&v13, v6);
      v7 = v12;
      if (v12 && atomic_fetch_add_explicit(v12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        v7 = (*(*v7 + 8))(v7);
      }

      if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v13 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v9 = [NSString stringWithUTF8String:EmptyString];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (qword_101AD5BD0 != -1)
      {
        sub_10134F30C();
      }

      if (os_log_type_enabled(off_1019EDC28, OS_LOG_TYPE_ERROR))
      {
        sub_10134F334();
      }

      v9 = 0;
    }

    sub_1002F717C(&v14);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (qword_101AD5BD0 != -1)
    {
      sub_10134F39C();
    }

    if (os_log_type_enabled(off_1019EDC28, OS_LOG_TYPE_ERROR))
    {
      sub_10134F3B0();
    }

    v9 = 0;
  }

  return v9;
}

+ (id)createImageUSDAwithImageURL:(id)a3 andSize:(CGSize)a4 andOutputDir:(id)a5 andError:(id *)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  [CRLUSDLib createImageStagewithImageURL:v10 andSize:width, height];
  v12 = [v11 URLByAppendingPathComponent:@"item.usda"];
  v13 = sub_1002F0D8C(&v37);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v35, v13);
  sub_1002F0E04(&v35);
  v14 = [v12 path];
  v15 = v14;
  sub_1002F0794(&v33, [v14 UTF8String]);
  __p = 0;
  v31 = 0;
  v32 = 0;
  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  pxrInternal__aapl__pxrReserved__::SdfLayer::Export();
  sub_1002F7224(&v28, v29[0]);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  v16 = v36;
  if (v36 && atomic_fetch_add_explicit((v36 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v16 + 8))(v16);
  }

  v38[0] = v12;
  v38[1] = v10;
  v17 = [NSArray arrayWithObjects:v38 count:2];
  v18 = [v10 lastPathComponent];
  v19 = [v18 stringByDeletingPathExtension];

  v20 = [v11 URLByAppendingPathComponent:v19];
  v21 = [v20 URLByAppendingPathExtension:@"usdz"];

  v27 = 0;
  [CRLUSDLib createUSDZFromFileURLs:v17 toOutputPath:v21 error:&v27];
  v22 = v27;
  v23 = v22;
  if (v22)
  {
    if (a6)
    {
      v24 = v22;
      v25 = 0;
      *a6 = v23;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = v21;
  }

  sub_1002F717C(&v37);

  return v25;
}

+ (TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>)createImageStagewithImageURL:(id)a3 andSize:(CGSize)a4
{
  v5 = v4;
  v6 = a3;
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  sub_1002F72D8(&v18, v5);
  pxrInternal__aapl__pxrReserved__::UsdGeomSetStageMetersPerUnit();
  sub_10134F484(&v18);
  sub_1002F72D8(&v18, v5);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v17, "Y");
  pxrInternal__aapl__pxrReserved__::UsdGeomSetStageUpAxis();
  sub_10134F4D4(&v17, &v18);
  sub_1002F72D8(&v18, v5);
  sub_1002F0794(v13, "/item");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10134F53C(v14);
  sub_1002F6CB4(&v18, &v15, &v16);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, "component");
  pxrInternal__aapl__pxrReserved__::UsdPrim::SetKind(&v18, &v8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v20);
  if (v19)
  {
    sub_1002F6E8C(v19);
  }

  v7 = sub_1002F0D8C(v5);
  sub_1002F6CB4(&v18, &v15, &v16);
  pxrInternal__aapl__pxrReserved__::UsdStage::SetDefaultPrim(v7, &v18);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v20);
  if (v19)
  {
    sub_1002F6E8C(v19);
  }

  sub_1002F72D8(&v18, v5);
  sub_1002F0794(v10, "/item/card");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10134F53C(v11);
  v18 = 0x400000004;
  sub_1002F3374(v9, &v18, 2);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v18, v12);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

+ (BOOL)exportUsdzWithRequest:(id)a3 andDestUrl:(id)a4 andError:(id *)a5
{
  v7 = a3;
  v60 = a4;
  v62 = v7;
  v61 = [v7 items];
  v96 = 0;
  v63 = [[CRLTemporaryDirectory alloc] initWithError:&v96];
  v8 = v96;
  if (v8)
  {
    v9 = v8;
    if (a5)
    {
      v10 = v8;
      v11 = 0;
      *a5 = v9;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_60;
  }

  if (qword_101AD5C30 != -1)
  {
    sub_10134F614();
  }

  v12 = off_1019EDC88;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v61 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Exporting %lu item(s) to USDZ", &buf, 0xCu);
  }

  v58 = a5;

  sub_1002F4398();
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  sub_1002F72D8(&buf, &v95);
  pxrInternal__aapl__pxrReserved__::UsdGeomSetStageMetersPerUnit();
  sub_10134F484(&buf);
  sub_1002F72D8(&buf, &v95);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v94, "Y");
  pxrInternal__aapl__pxrReserved__::UsdGeomSetStageUpAxis();
  sub_10134F4D4(&v94, &buf);
  sub_1002F72D8(&buf, &v95);
  sub_1002F0794(v89, "/scene");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10134F53C(v90);
  v14 = sub_1002F0D8C(&v95);
  sub_1002F6CB4(&buf, &v92, &v93);
  pxrInternal__aapl__pxrReserved__::UsdStage::SetDefaultPrim(v14, &buf);
  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v102);
  if (*(&buf + 1))
  {
    sub_1002F6E8C(*(&buf + 1));
  }

  if ([v7 showBasePlate])
  {
    v88 = v95;
    sub_10134EF68(&v88);
    [v7 basePlateSize];
    [CRLUSDLib addBasePlateWithStage:&v88 andSize:?];
    sub_1002F717C(&v88);
  }

  sub_1002F72D8(&buf, &v95);
  sub_1002F43FC(v91, &v83);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v98, "scaleroot");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v84, &v83, &v98);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v84);
  if ((v98 & 7) != 0)
  {
    atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10134F63C(&v83, &v84, &buf);
  sub_1002F6CB4(&v98, &v86, &v87);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&buf, &v98);
  v103 = 0;
  if ((v100 & 7) != 0)
  {
    atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(v99);
  if (*(&v98 + 1))
  {
    sub_1002F6E8C(*(&v98 + 1));
  }

  [v7 surfaceScale];
  v16 = v15;
  [v7 surfaceScale];
  v18 = v17;
  [v7 surfaceScale];
  v19 = v16;
  v20 = v18;
  *&v21 = v21;
  v80 = v19;
  v81 = v20;
  v82 = LODWORD(v21);
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::SetScale();
  v64 = objc_alloc_init(NSMutableArray);
  v22 = [(CRLTemporaryDirectory *)v63 URL];
  v59 = [v22 URLByAppendingPathComponent:@"scene.usda"];

  [v64 addObject:v59];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v23 = v61;
  v24 = [v23 countByEnumeratingWithState:&v76 objects:v97 count:16];
  if (!v24)
  {
    goto LABEL_42;
  }

  v26 = *v77;
  v27 = 1;
  *&v25 = 138543362;
  v57 = v25;
  while (2)
  {
    v28 = 0;
    do
    {
      if (*v77 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v29 = *(*(&v76 + 1) + 8 * v28);
      v30 = [v29 type];
      if (v30)
      {
        if (v30 != 1)
        {
          goto LABEL_35;
        }

        v31 = [v29 url];
        [v29 size];
        v33 = v32;
        v35 = v34;
        v36 = [(CRLTemporaryDirectory *)v63 URL];
        v75 = 0;
        v37 = [CRLUSDLib createImageUSDAwithImageURL:v31 andSize:v36 andOutputDir:&v75 andError:v33, v35];
        v9 = v75;

        if (v9)
        {
          if (v58)
          {
            v55 = v9;
            *v58 = v9;
          }

          goto LABEL_58;
        }

        v74 = v95;
        sub_10134EF68(&v74);
        [CRLUSDLib addReferenceWithStage:&v74 andIndex:v27 andItem:v29 andUsdzURL:v37 andDefaultPrimName:@"item"];
        sub_1002F717C(&v74);
        [v64 addObject:v37];
      }

      else
      {
        v38 = [v29 url];
        v39 = [v38 pathExtension];
        v37 = [v39 lowercaseString];

        if (([v37 isEqualToString:@"usdz"] & 1) != 0 || (objc_msgSend(v37, "isEqualToString:", @"usda") & 1) != 0 || objc_msgSend(v37, "isEqualToString:", @"usdc"))
        {
          v40 = [v29 url];
          v41 = [v40 path];
          v42 = [CRLUSDLib defaultPrimNameForUSD:v41];

          v73 = v95;
          sub_10134EF68(&v73);
          v43 = [v29 url];
          [CRLUSDLib addReferenceWithStage:&v73 andIndex:v27 andItem:v29 andUsdzURL:v43 andDefaultPrimName:v42];

          sub_1002F717C(&v73);
          v44 = [v29 url];
          [v64 addObject:v44];
        }

        else
        {
          if (qword_101AD5C30 != -1)
          {
            sub_10134F690();
          }

          v42 = off_1019EDC88;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [v29 url];
            v46 = [v45 absoluteString];
            LODWORD(v98) = v57;
            *(&v98 + 4) = v46;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Skipping USDZ export of file with unsupported extension: %{public}@", &v98, 0xCu);
          }
        }
      }

LABEL_35:
      ++v27;
      v28 = v28 + 1;
    }

    while (v24 != v28);
    v47 = [v23 countByEnumeratingWithState:&v76 objects:v97 count:16];
    v24 = v47;
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v48 = sub_1002F0D8C(&v95);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v71, v48);
  sub_1002F0E04(&v71);
  v49 = [v59 path];
  v50 = v49;
  sub_1002F0794(&v98, [v49 UTF8String]);
  __p = 0;
  v69 = 0;
  v70 = 0;
  v67[0] = 0;
  v67[1] = 0;
  v66 = v67;
  v51 = pxrInternal__aapl__pxrReserved__::SdfLayer::Export();
  sub_1002F7224(&v66, v67[0]);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(__p);
  }

  if ((v99[7] & 0x80000000) != 0)
  {
    operator delete(v98);
  }

  v52 = v72;
  if (v72 && atomic_fetch_add_explicit((v72 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v52 + 8))(v52);
  }

  v11 = v58;
  if (v51)
  {
    v65 = 0;
    [CRLUSDLib createUSDZFromFileURLs:v64 toOutputPath:v60 error:&v65];
    v53 = v65;
    v9 = v53;
    if (v53)
    {
      if (v58)
      {
        v54 = v53;
        v11 = 0;
        *v58 = v9;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v9 = 0;
LABEL_58:
    v11 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::~UsdGeomXformCommonAPI(&buf);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(v85);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(v91);
  sub_1002F717C(&v95);
LABEL_60:

  return v11;
}

+ (BOOL)addBasePlateWithStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(CGSize)a4 :UsdStage>)a3 andSize:
{
  sub_1002F0794(&v10, "/scene");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v7, "baseplate");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v9, v6, v7);
  if ((v7[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v7[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(v6);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_1002F72D8(&v10, a3.var0);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
  sub_10134F484(&v10);
  v10 = 0x400000004;
  sub_1002F3374(v7, &v10, 2);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v10, v8);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

+ (BOOL)addReferenceWithStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(int64_t)a4 :(id)a5 UsdStage>)a3 andIndex:(id)a6 andItem:(id)a7 andUsdzURL:andDefaultPrimName:
{
  v11 = a5;
  v43 = a6;
  v42 = a7;
  v12 = [NSString stringWithFormat:@"ref%lu", a4];
  sub_1002F0794(buf, "/scene/scaleroot");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
  v13 = v12;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v60, [v12 UTF8String]);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v72, v65, v60);
  if ((v60[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v60[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(v65);
  if (SHIBYTE(v74) < 0)
  {
    operator delete(*buf);
  }

  sub_1002F72D8(buf, a3.var0);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  sub_10134F484(buf);
  sub_1002F6CB4(v65, &v70, &v71);
  [v11 rotation];
  v40 = v14;
  [v11 rotation];
  v39 = v15;
  [v11 rotation];
  v62 = 57.296 * v40;
  v63 = vmuls_lane_f32(57.296, v39, 1);
  v64 = vmuls_lane_f32(57.296, v16, 2);
  [v11 translation];
  v41 = v17;
  [v11 translation];
  v39.i32[1] = v18;
  [v11 translation];
  v37 = v19;
  [v11 scale];
  v38 = v20;
  [v11 scale];
  v36 = v21;
  [v11 scale];
  v60[4] = __PAIR64__(v36, v38);
  v61 = v22;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v60, v69);
  v60[3] = 0;
  v23 = pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::SetRotate();
  *buf = vcvtq_f64_f32(__PAIR64__(v39.u32[1], v41));
  v74 = v37;
  v24 = pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::SetTranslate();
  v25 = pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::SetScale();
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(buf, "innerref");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v59, &v72, buf);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_1002F72D8(buf, a3.var0);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
  sub_10134F484(buf);
  sub_1002F6CB4(v52, &v57, &v58);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v48, v52);
  v26 = [v43 lastPathComponent];
  v27 = [NSString stringWithFormat:@"./%@", v26];
  v28 = v27;
  sub_1002F0794(&__p, [v27 UTF8String]);

  v45 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (v42)
  {
    v29 = [NSString stringWithFormat:@"/%@", v42];
    v30 = v29;
    sub_1002F0794(buf, [v29 UTF8String]);

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath();
    sub_1002F6F30(&v45, v44);
    sub_1002F6F88(&v45 + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_1002F6B18(v44);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (qword_101AD5C30 != -1)
    {
      sub_10134F760();
    }

    v31 = off_1019EDC88;
    if (os_log_type_enabled(off_1019EDC88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v43;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No default prim name for USD: %{public}@", buf, 0xCu);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v44, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference();
  v32 = pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
  v33 = v76;
  v76 = 0;
  if (v33)
  {
    sub_1002F705C(v33, *(v33 + 8));
    operator delete();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v34 = (v23 & v24 & v25);
  sub_1002F6B18(&v75);
  if (SHIBYTE(v74) < 0)
  {
    operator delete(*buf);
  }

  if ((v34 & v32 & 1) == 0)
  {
    if (qword_101AD5BD0 != -1)
    {
      sub_10134F788();
    }

    if (os_log_type_enabled(off_1019EDC28, OS_LOG_TYPE_ERROR))
    {
      sub_10134F7B0();
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v45);
  if (v47 < 0)
  {
    operator delete(__p);
  }

  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v50);
  if (v49)
  {
    sub_1002F6E8C(v49);
  }

  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v54);
  if (v53)
  {
    sub_1002F6E8C(v53);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(v56);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v59);
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::~UsdGeomXformCommonAPI(v60);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v67);
  if (v66)
  {
    sub_1002F6E8C(v66);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(v69);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(&v72);

  return v34 & v32;
}

+ (id)compressModel:(id)a3
{
  v3 = a3;
  sub_1002F4398();
  v4 = [[CRLTemporaryDirectory alloc] initWithError:0];
  if (v4)
  {
    [(CRLTemporaryDirectory *)v4 path];
    v5 = [objc_claimAutoreleasedReturnValue() UTF8String];
    sub_1002F0794(&__p, v5);
    sub_1002F5F58(&v7);
  }

  return 0;
}

+ (int)determineCompression:(id)a3
{
  v3 = a3;
  sub_1002F4398();
  v4 = [[CRLTemporaryDirectory alloc] initWithError:0];
  if (v4)
  {
    [(CRLTemporaryDirectory *)v4 path];
    v5 = [objc_claimAutoreleasedReturnValue() UTF8String];
    sub_1002F0794(&__p, v5);
    sub_1002F5F58(&v8);
  }

  return -1;
}

@end