void sub_29C925664(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_29C9256A0(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isLiveListenEnabled];

  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v1;
}

void sub_29C925700(uint64_t a1, char a2, double a3)
{
  objc_copyWeak(v5, (a1 + 32));
  v6 = a2;
  v5[1] = *&a3;
  AXPerformBlockOnMainThread();
  objc_destroyWeak(v5);
}

void sub_29C9257B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsLiveListenEnabled:v2];

  LODWORD(WeakRetained) = *(a1 + 48);
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x29EDC7AC8];
  if (WeakRetained == 1)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:30.0];
    v8 = [v5 systemImageNamed:@"mic.and.signal.meter.fill" variableValue:v7 withConfiguration:v6];
    [v4 setGlyphImage:v8];
  }

  else
  {
    v7 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"mic.fill"];
    v8 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:30.0];
    v9 = [v7 imageByApplyingSymbolConfiguration:v8];
    [v4 setGlyphImage:v9];
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 _updateSelectedStatus];
}