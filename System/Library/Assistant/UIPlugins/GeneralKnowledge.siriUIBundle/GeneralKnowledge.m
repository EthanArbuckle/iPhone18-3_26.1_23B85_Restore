void sub_19C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    [v3 setImage:v5 forKey:v4];
    [*(a1 + 48) _configureWithImage:v5];
  }
}

id SiriGKLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.siri.GeneralKnowledge"];
  v3 = [v2 siriUILocalizedStringForKey:v1];

  return v3;
}

id SiriGK_safariPunchoutURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(NSMutableString);
  v6 = [v3 scheme];
  if ([v6 isEqualToString:@"http"])
  {
  }

  else
  {
    v7 = [v3 scheme];
    v8 = [v7 isEqualToString:@"https"];

    if (!v8)
    {
      v15 = v3;
      goto LABEL_10;
    }
  }

  v9 = [v3 absoluteString];
  [v5 appendString:v9];

  if (v4)
  {
    [v5 appendString:@"?back="];
    v10 = [v4 absoluteString];
    v11 = [NSMutableCharacterSet characterSetWithCharactersInString:@"/:?&="];
    v12 = [v11 invertedSet];
    v13 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v12];

    [v5 appendString:v13];
  }

  else
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_B290(v3, v14);
    }
  }

  v15 = [NSURL URLWithString:v5];
LABEL_10:
  v16 = v15;

  return v16;
}

void sub_5C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a20, 8);
  _Unwind_Resume(a1);
}

void sub_5C64(uint64_t a1, void *a2, int a3)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = v11;
    if (!v11 && a3)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [UIImage imageNamed:@"missingPhoto" inBundle:v7];
      v9 = +[UIColor siriui_maskingColor];
      v12 = [v8 _flatImageWithColor:v9];

      v6 = v12;
    }

    if (v6)
    {
      v11 = v6;
      [WeakRetained[2] setImage:?];
      v10 = *(*(a1 + 32) + 8);
      if ((*(v10 + 24) & 1) == 0)
      {
        *(v10 + 24) = 1;
        [WeakRetained[4] setHidden:1];
      }
    }

    else
    {
      v11 = 0;
    }
  }
}

void sub_8070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_809C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v6)
  {
    [*(a1 + 32) setImage:v6 forKey:*(a1 + 40)];
    [v4 _configureWithImage:v6];
  }

  else if (WeakRetained)
  {
    [*(WeakRetained + 9) removeFromSuperview];
    v5 = v4[9];
    v4[9] = 0;
  }
}

id sub_8260(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 80);

  return [v2 setAlpha:0.0];
}

void sub_9E1C(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_20090;
  qword_20090 = v1;

  v3 = qword_20090;

  [v3 setUnitsStyle:1];
}

void sub_A510(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    [v3 setImage:v5 forKey:v4];
    [*(a1 + 48) _configureWithImage:v5 asVideoResult:*(a1 + 56)];
  }
}

void sub_A6E0(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setAlpha:1.0];
  [*(*(a1 + 32) + 72) setAlpha:0.0];
  if (*(a1 + 40) == 1)
  {
    v2 = *(*(a1 + 32) + 64);
    v3 = [UIColor colorWithWhite:1.0 alpha:0.2];
    [v2 setBackgroundColor:v3];
  }
}

void sub_B290(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "SiriGK_safariPunchoutURL";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s No back URL provided for punchout to target: %@", &v2, 0x16u);
}

void sub_B31C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SiriGKImageDetailViewController.m" lineNumber:41 description:@"Expected SAUIImageView"];
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}